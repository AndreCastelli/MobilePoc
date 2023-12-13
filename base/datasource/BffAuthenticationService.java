package br.com.realizecfi.orbi.base.datasource;

import br.com.realizecfi.orbi.base.AppiumDriverManager;
import br.com.realizecfi.orbi.base.util.PropertiesUtil;
import io.restassured.builder.RequestSpecBuilder;
import io.restassured.specification.RequestSpecification;
import org.json.JSONObject;

public class BffAuthenticationService extends BaseService {

    private static final String AUTH = "/auth";
    private static final String ACCESS_TOKEN = "access_token";
    private static final String HEADER_NAME = "Authorization";
    private static final String HEADER_VALUE = "Bearer ";
    private static final String DEVICE_ID = "deviceId";
    private static final String USERNAME = "username";
    private static final String PASSWORD = "password";

    public BffAuthenticationService() {
        propertiesUtil = new PropertiesUtil();
        AppiumDriverManager.shared().setBaseURI(propertiesUtil.getPropertyByName("orbi.auth.manager.baseURI"));
    }

    public RequestSpecification authenticate(String device, String username, String password) {
        String accessToken;
        accessToken = getAttributeFromPostRequest(createAuthPayload(
                device, username, password), AUTH, ACCESS_TOKEN);

        return new RequestSpecBuilder().addHeader(HEADER_NAME, HEADER_VALUE + accessToken).build();
    }

    public String createAuthPayload(String device, String cpf, String password) {
        JSONObject requestBody = new JSONObject();
        requestBody.put(DEVICE_ID, device);
        requestBody.put(USERNAME, cpf);
        requestBody.put(PASSWORD, password);

        return requestBody.toString();
    }


}
