package br.com.realizecfi.orbi.base.datasource.cards;

import br.com.realizecfi.orbi.base.AppiumDriverManager;
import br.com.realizecfi.orbi.base.datasource.AuthenticationService;
import br.com.realizecfi.orbi.base.datasource.BaseService;
import br.com.realizecfi.orbi.base.util.PropertiesUtil;
import io.restassured.response.Response;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

public class OrbiCardsManagerService extends BaseService {

    private static final String CARDS_RESOURCE = "/v1/card/";
    private AuthenticationService authenticationService;

    public OrbiCardsManagerService() {
        propertiesUtil = new PropertiesUtil();
    }

    public Response updateCardStatus(String cardId, String orbiAccountId, String cardStatus) {
        Map<String, String> params = new HashMap<>();
        params.put("cardStatus", cardStatus);

        // AUTENTICA KEYCLOACK
        authenticationService = new AuthenticationService();
        AppiumDriverManager.shared().setRequest(authenticationService.getAccessTokenBackEnd());

        //SETA ORBI-ACCOUNT-ID NO HEADER
        Map header = new LinkedHashMap();
        header.put("Orbi-Account-Id", orbiAccountId);
        AppiumDriverManager.shared().setHeaders(header);

        // SETA URL BASE DA API
        AppiumDriverManager.shared().setBaseURI(propertiesUtil.getPropertyByName("orbi.cards.manager.baseURI"));

        return doPatchRequestWithQueryParam(params, CARDS_RESOURCE + cardId + "/update-status");
    }

}
