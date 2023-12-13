package br.com.realizecfi.orbi.base.datasource.onboarding;

import br.com.realizecfi.orbi.base.AppiumDriverManager;
import br.com.realizecfi.orbi.base.datasource.AuthenticationService;
import br.com.realizecfi.orbi.base.datasource.BaseService;
import br.com.realizecfi.orbi.base.util.PropertiesUtil;
import io.restassured.response.Response;
import org.apache.http.HttpStatus;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

public class OnboardingService extends BaseService {
    private final String WHITELIST_ENDPOINT = "/whitelist";
    private final String CREATE_A_NEW_ACCOUNT = "/v1/account";
    private final String GET_PIER_PERSON = "/v1/persons?cpf={cpf}";
    private final String CREATE_ACCOUNT_AND_REGISTER_PASSWORD = "/v1/orbi/onboarding/password";
    private final String TERMS_OF_USE = "/v1/orbi/onboarding/terms";
    private final String FACE_VALIDATION = "/v1/orbi/onboarding/face-validation";

    private AuthenticationService authenticationService;
    String deviceId;
    String imgBase64 = "{\"imageBase64\": \"iVBORw0KGgoAAAANSUhEUgAAAAgAAAAKCAIAAAAGpYjXAAAAAXNSR0IArs4c6QAAAARnQU1BA\"}";

    public OnboardingService() {
        propertiesUtil = new PropertiesUtil();
        authenticationService = new AuthenticationService();
        AppiumDriverManager.shared().setRequest(authenticationService.getAccessTokenBackEnd());
    }

    public void registerCPFInWhiteList(String cpf) {
        Map<String, String> payload = new HashMap<>();
        payload.put("cpf", cpf);
        payload.put("Content-Type", "application/json");

        AppiumDriverManager.shared().setBaseURI(propertiesUtil.getPropertyByName("whitelist.baseURI"));
        doPostRequestMap(payload, WHITELIST_ENDPOINT).then().statusCode(HttpStatus.SC_CREATED);
    }

    public void createOrbiAccount(String origin, String cpf) {
        Map queryParams = new LinkedHashMap();
        queryParams.put("cpf", cpf);
        queryParams.put("origin", origin);

        AppiumDriverManager.shared().setBaseURI(propertiesUtil.getPropertyByName("orbi.onboarding.manager.baseURI"));
        doPostRequestQuery(queryParams, CREATE_A_NEW_ACCOUNT);
    }

    public Map headerWithCPFAndDeviceId(String cpf) {
        Map params = new LinkedHashMap();
        params.put("cpf", cpf);
        params.put("deviceId", AppiumDriverManager.shared().getDeviceId());

        return params;
    }

    public void accountCreationRegisteringPassword(String password) {
        deviceId = AppiumDriverManager.shared().getDeviceId();
        // SET URL DA API
        AppiumDriverManager.shared().setBaseURI(propertiesUtil.getPropertyByName("orbi.onboarding.manager.baseURI"));
        // CONSULTA TERMOS
        AppiumDriverManager.shared().setResponse(consultOnboardingTerms());
        AppiumDriverManager.shared().getResponse().then().statusCode(200);
        // ACEITA TERMOS ONBOARDING
        AppiumDriverManager.shared().setResponse(acceptOnboardingTerms());
        AppiumDriverManager.shared().getResponse().then().statusCode(200);
        //VALIDA BIOMETRIA
        AppiumDriverManager.shared().setResponse(validateOnboardingSelfie());
        AppiumDriverManager.shared().getResponse().then().statusCode(200);
        // CRIA CONTA PASSANDO A SENHA
        Map payloadPassword = new HashMap();
        payloadPassword.put("password", password);
        AppiumDriverManager.shared().setResponse(
                    doPostRequestMap(payloadPassword, CREATE_ACCOUNT_AND_REGISTER_PASSWORD));
        AppiumDriverManager.shared().getResponse().then().statusCode(201);
    }

    private Response validateOnboardingSelfie() {
       return  doPostRequestJson(imgBase64, FACE_VALIDATION);
    }

    private Response acceptOnboardingTerms() {
        return doPostRequestNoPayload(TERMS_OF_USE);
    }

    private Response consultOnboardingTerms() {
        return doGetWithoutParameters(TERMS_OF_USE);
    }

    public void setCpfHeaderToCreateAccount(String cpf) {
        AppiumDriverManager.shared().setHeaders(headerWithCPFAndDeviceId(cpf));
    }

    public void validateWhichUserIsMyCard(String cpf) {
        AppiumDriverManager.shared().setBaseURI(propertiesUtil.getPropertyByName("conductor.connector.baseURI"));
        doGetRequestOneAttribute(GET_PIER_PERSON, cpf).then().statusCode(HttpStatus.SC_OK);
    }
}
