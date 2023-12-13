package br.com.realizecfi.orbi.base.datasource.account;

import br.com.realizecfi.orbi.base.AppiumDriverManager;
import br.com.realizecfi.orbi.base.datasource.AuthenticationService;
import br.com.realizecfi.orbi.base.datasource.BaseService;
import br.com.realizecfi.orbi.base.util.PropertiesUtil;
import io.restassured.response.Response;
import org.apache.http.HttpStatus;

public class AccountService extends BaseService {
    private final String FIND_ACCOUNT = "v1/accounts/by/person/";

    private AuthenticationService authenticationService;

    public AccountService() {
        propertiesUtil = new PropertiesUtil();
        authenticationService = new AuthenticationService();
        AppiumDriverManager.shared().setRequest(authenticationService.getAccessTokenBackEnd());
    }

    public String findAccountByPersonID(String personId) {
        System.out.println("Person: "+personId);
        AppiumDriverManager.shared().setBaseURI(propertiesUtil.getPropertyByName("orbi.bank.account.baseURI"));
        Response response = doGetWithoutParameters(FIND_ACCOUNT + personId);
        response.then().statusCode(HttpStatus.SC_OK);

        return response.then().extract().path("dockId").toString();
    }
}
