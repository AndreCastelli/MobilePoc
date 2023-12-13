package br.com.realizecfi.orbi.base.datasource;

import br.com.realizecfi.orbi.base.AppiumDriverManager;
import br.com.realizecfi.orbi.base.util.PropertiesUtil;
import io.restassured.builder.RequestSpecBuilder;
import io.restassured.specification.RequestSpecification;

import java.util.HashMap;
import java.util.Map;

public class AuthenticationService extends BaseService {

    private static final String CONTENT_TYPE = "Content-Type";
    private static final String URL_ENCODING = "application/x-www-form-urlencoded";
    private static final String CLIENT_ID = "client_id";
    private static final String GRANT_TYPE = "grant_type";
    private static final String ACCESS_TOKEN = "access_token";
    private static final String HEADER_NAME = "Authorization";
    private static final String HEADER_VALUE = "Bearer ";
    private static final String RESOURCE = "protocol/openid-connect/token";
    private static final String CLIENT_SECRET = "client_secret";

    public AuthenticationService() {
        propertiesUtil = new PropertiesUtil();
        AppiumDriverManager.shared().setBaseURI(propertiesUtil.getPropertyByName("authentication.back.baseURI"));
    }

    public RequestSpecification getAccessTokenBackEnd() {
        Map<String, String> loginMap;
        String accessToken;
        loginMap = new HashMap<>();
        loginMap.put(CONTENT_TYPE, URL_ENCODING);
        loginMap.put(CLIENT_ID, propertiesUtil.getPropertyByName("authentication.back.clientId"));
        loginMap.put(CLIENT_SECRET, propertiesUtil.getPropertyByNameBase64("authentication.back.clientSecret"));
        loginMap.put(GRANT_TYPE, propertiesUtil.getPropertyByName("authentication.back.grantType"));
        accessToken = getAttributeNotAuthen(
                loginMap, RESOURCE, ACCESS_TOKEN);

        return new RequestSpecBuilder().addHeader(HEADER_NAME, HEADER_VALUE + accessToken).build();
    }
}
