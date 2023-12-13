package br.com.realizecfi.orbi.base.datasource.cards;

import br.com.realizecfi.orbi.base.AppiumDriverManager;
import br.com.realizecfi.orbi.base.datasource.BaseService;
import br.com.realizecfi.orbi.base.util.PropertiesUtil;
import com.jayway.jsonpath.JsonPath;
import io.restassured.response.Response;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.*;

public class CardsService extends BaseService {

    public CardsService() {
        propertiesUtil = new PropertiesUtil();
        AppiumDriverManager.shared().setBaseURI(propertiesUtil.getPropertyByName("orbi.bff.mobile.baseURI"));
    }

    public Response getHomeCards() {
        return doGetWithoutParameters("/v1/card/home");
    }

    public Response getInvoiceHistory() {
        return doGetWithoutParameters("/v1/card/invoice/history");
    }

    public Response getFutureInvoice() {
        return doGetWithoutParameters("v1/card/invoice/future");
    }

    public Response getCards() {
        return doGetWithoutParameters("/v1/card/cards");
    }

    public String getVirtualCardId() {
        AppiumDriverManager.shared().setResponse(getCards());

        return AppiumDriverManager.shared().getResponse().jsonPath().getString("content.id[1]");
    }

    public Response patchUpdateCardStatus(String cardStatus, String cardId) {
        Map<String, String> params = new HashMap<>();
        params.put("cardStatus", cardStatus);

        return doPatchRequestWithQueryParam(params, "/v1/card/" + cardId + "/update-status");
    }

    public Response getCardRealData(String cardId) {
        return doGetWithoutParameters("/v1/card/" + cardId + "/real-data");
    }

    public Response getInvoiceByDueDate(String invoiceDueDate) {
        Map<String, String> params = new HashMap<>();
        params.put("invoiceDueDate", invoiceDueDate);

        return doGetRequestWithPathParams(params, "/v1/card/invoice/{invoiceDueDate}");
    }

    public Response getPaymentsByInvoiceDueDate(String invoiceDueDate) {
        Map<String, String> params = new HashMap<>();
        params.put("invoiceDueDate", invoiceDueDate);

        return doGetRequestWithPathParams(params, "/v1/card/invoice/{invoiceDueDate}/payments");
    }

    public Response getInvoiceInvoiceSummaryByInvoiceDudeDateBilletId(String invoiceDueDate, String billetId) {
        Map<String, String> params = new HashMap<>();
        params.put("invoiceDueDate", invoiceDueDate);
        params.put("billetId", billetId);

        return doGetRequestWithPathParams(params, "/v1/card/invoice/{invoiceDueDate}/payments/billet/{billetId}");
    }

    public List<BigDecimal> getListBigDecimalValueFromJsonBody(String responseBody, String jsonPath) {
        List<Double> list = JsonPath.read(responseBody, jsonPath);
        List<BigDecimal> bigDecimalList = new LinkedList<>();
        for (Double value : list) {
            bigDecimalList.add(new BigDecimal(value).setScale(2, RoundingMode.HALF_EVEN));
        }

        return bigDecimalList;
    }

    public List<String> getListStringFromJsonBody(String responseBody, String jsonPath) {
        List<String> list = JsonPath.read(responseBody, jsonPath);
        return list;
    }
}
