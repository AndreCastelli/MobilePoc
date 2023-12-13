package br.com.realizecfi.orbi.base.datasource.onboarding;

import br.com.realizecfi.orbi.base.AppiumDriverManager;
import br.com.realizecfi.orbi.base.datasource.BaseService;
import br.com.realizecfi.orbi.base.util.FileUtil;
import br.com.realizecfi.orbi.base.util.PersonUtil;
import br.com.realizecfi.orbi.base.util.PropertiesUtil;
import io.restassured.RestAssured;
import io.restassured.builder.RequestSpecBuilder;
import io.restassured.response.Response;
import org.apache.http.HttpStatus;
import org.json.JSONObject;

import java.util.LinkedHashMap;
import java.util.Map;

public class ConductorService extends BaseService {
    PropertiesUtil propertiesUtil;
    PersonUtil personUtil;
    FileUtil fileUtil;

    public ConductorService() {
        propertiesUtil = new PropertiesUtil();
        fileUtil = new FileUtil();
        personUtil = new PersonUtil();
        getAuthenticateToTheConductorAPI();
    }

    public PersonUtil getPerson() {
        return personUtil;
    }

    public void getAuthenticateToTheConductorAPI() {
        RestAssured.baseURI = propertiesUtil.getPropertyByName("authentication.conductor.url");

        RequestSpecBuilder reqBuilder = new RequestSpecBuilder();
        reqBuilder.addHeader(
                "access_token", propertiesUtil.getPropertyByNameBase64("authentication.conductor.accessToken"));
        reqBuilder.addHeader(
                "client_id", propertiesUtil.getPropertyByNameBase64("authentication.conductor.clientId"));
        AppiumDriverManager.shared().setRequest(reqBuilder.build());
    }

    public Response createPerson() {
        Map<String, Object> queryParams = new LinkedHashMap();
        queryParams.put("nome", personUtil.getName());
        queryParams.put("tipo", "PF");
        queryParams.put("dataNascimento", personUtil.getBirthDate());
        queryParams.put("cpf", personUtil.getCpf());
        queryParams.put("numeroIdentidade", personUtil.getRg());
        queryParams.put("orgaoExpedidorIdentidade", "SSP");

        return doPostRequestQuery(queryParams, "/pessoas");
    }

    public Response createPersonDetail(int idPerson) {
        Map<String, Object> queryParams = new LinkedHashMap();
        queryParams.put("idPessoa", idPerson);
        queryParams.put("nomeMae", personUtil.getMother());
        queryParams.put("email", personUtil.getEmail());

        return doPostRequestQuery(queryParams, "/pessoas-detalhes");
    }

    public Response createPersonAddress(int idPerson) {
        Map<String, Object> queryParams = new LinkedHashMap();
        queryParams.put("idPessoa", idPerson);
        queryParams.put("idTipoEndereco", 2);
        queryParams.put("cep", 80160240);
        queryParams.put("logradouro", "Erico");
        queryParams.put("numero", 740);
        queryParams.put("complemento", 302);
        queryParams.put("bairro", "menino%20deus");
        queryParams.put("cidade", "porto%20alegre");
        queryParams.put("uf", "RS");
        queryParams.put("pais", "BR");
        queryParams.put("flagCorrespondencia", true);

        return doPostRequestQuery(queryParams, "/enderecos");
    }

    public Response createPersonPhone(int idPerson, int idTypePhone) {
        Map<String, Object> queryParams = new LinkedHashMap();
        queryParams.put("idTipoTelefone", idTypePhone);
        queryParams.put("idPessoa", idPerson);
        queryParams.put("ddd", "053");
        queryParams.put("telefone", "99999999");

        return doPostRequestQuery(queryParams, "/telefones");
    }

    public Response createAccountByProductId(int productId) {
        int idPerson = createPerson().then().statusCode(HttpStatus.SC_OK).extract().path("id");
        createPersonDetail(idPerson).then().statusCode(HttpStatus.SC_OK);
        int personAddressId = createPersonAddress(idPerson).then().statusCode(HttpStatus.SC_OK).extract().path("id");
        createPersonPhone(idPerson, 18).then().statusCode(HttpStatus.SC_OK);

        JSONObject requestBody = new JSONObject();
        requestBody.put("idPessoa", idPerson);
        requestBody.put("idOrigemComercial", 5);
        requestBody.put("idProduto", productId);
        requestBody.put("diaVencimento", 15);
        requestBody.put("valorRenda", 3400);
        requestBody.put("canalEntrada", "hml");
        requestBody.put("valorPontuacao", 0);
        requestBody.put("idEnderecoCorrespondencia", personAddressId);
        requestBody.put("limiteGlobal", 1000);
        requestBody.put("limiteMaximo", 1000);
        requestBody.put("limiteParcelas", 500);
        requestBody.put("limiteConsignado", 0);
        requestBody.put("flagFaturaPorEmail", 1);
        requestBody.put("idPromotorVenda", 0);
        requestBody.put("idStatusConta", 0);

        return doPostRequestJson(requestBody.toString(), "/contas");
    }

    public Response getAccountInfoBy(String idPerson) {
        return doGetRequestOneAttribute("/contas/?idPessoa={cpf}", idPerson);
    }

    public Response createMyCard(String personId, String accountId, String flagId) {
        Map<String, Object> queryParams = new LinkedHashMap();
        queryParams.put("idBandeira", flagId);

        return doPostRequestQuery(
                queryParams, "/contas/" + accountId + "/pessoas/" + personId + "/gerar-cartao");
    }

    public Response createAccountFromScratch() {
        //createAccountByProductId(4);
        String personId = createAccountByProductId(4).getBody().jsonPath().getString("idPessoa");
        return getAccountInfoBy(personId);
    }

    public void updateCardStatus(String cardStatus, String cardID) {
        Map<String, Object> queryParams = new LinkedHashMap();
        queryParams.put("id", cardStatus);

        doPostRequestMap(queryParams, "cartoes/" + cardID + "/alterar-estagio")
                .then().statusCode(HttpStatus.SC_OK);
    }

    public void unlockCard(String cardID) {
        doPostRequestNoPayload("cartoes/" + cardID + "/desbloquear").then().statusCode(HttpStatus.SC_OK);
    }

    public void conductorOnboarding() {
        Response resp = createAccountByProductId(4);
        String personId = resp.getBody().jsonPath().getString("idPessoa");
        String accountId = resp.getBody().jsonPath().getString("id");

        Response respCard = createMyCard(personId, accountId, "2");
        respCard.then().statusCode(HttpStatus.SC_OK);
        String idCard = respCard.then().extract().path("idCartao").toString();
        updateCardStatus("5",idCard);
        unlockCard(idCard);
    }
}
