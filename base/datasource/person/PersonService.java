package br.com.realizecfi.orbi.base.datasource.person;

import br.com.realizecfi.orbi.base.AppiumDriverManager;
import br.com.realizecfi.orbi.base.datasource.AuthenticationService;
import br.com.realizecfi.orbi.base.datasource.BaseService;
import br.com.realizecfi.orbi.base.util.PropertiesUtil;
import io.restassured.response.Response;
import org.apache.http.HttpStatus;

import java.util.LinkedHashMap;
import java.util.Map;

public class PersonService extends BaseService {
    private final String FIND_PERSON = "v1/person";

    private AuthenticationService authenticationService;

    public PersonService() {
        propertiesUtil = new PropertiesUtil();
        authenticationService = new AuthenticationService();
        AppiumDriverManager.shared().setRequest(authenticationService.getAccessTokenBackEnd());
    }

    public String findPersonByCPFOrCNPJ(String cpf) {
        Map queryParams = new LinkedHashMap();
        queryParams.put("cpfCnpj", cpf);

        AppiumDriverManager.shared().setBaseURI(propertiesUtil.getPropertyByName("orbi.person.manager.baseURI"));
        Response response = doGetRequestQuery(queryParams, FIND_PERSON);
        response.then().statusCode(HttpStatus.SC_OK);

        return response.then().extract().path("person[0].id").toString();
    }
}
