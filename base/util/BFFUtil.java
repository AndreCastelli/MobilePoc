package br.com.realizecfi.orbi.base.util;

import br.com.realizecfi.orbi.base.AppiumDriverManager;
import io.restassured.path.json.JsonPath;
import io.restassured.path.json.config.JsonPathConfig;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;

public class BFFUtil {

    JsonPathConfig config;

    public BFFUtil() {
    }

    private JsonPath setJsonPathReturnType() {
        config = new JsonPathConfig().numberReturnType(JsonPathConfig.NumberReturnType.BIG_DECIMAL);
        JsonPath jsonPath = new JsonPath(AppiumDriverManager.shared().getResponse().getBody().asString());
        return jsonPath;
    }

    public String getResponseStringValue(String responseBodyValue) {
        return AppiumDriverManager.shared().getResponse().getBody().jsonPath().getString(responseBodyValue);
    }

    public List<BigDecimal> getListResponseMonetaryValue(String responseBodyValue) {
        List<BigDecimal> listBigDecimalValueFromResponseBody = setJsonPathReturnType().using(config).get(responseBodyValue);
        List<BigDecimal> BigDecimalValueFormated = new ArrayList<>();
        for (int i = 0; i < listBigDecimalValueFromResponseBody.size(); i++){
            BigDecimalValueFormated.add(listBigDecimalValueFromResponseBody.get(i).setScale(2, RoundingMode.HALF_EVEN));
        }
        return BigDecimalValueFormated;
    }

    public BigDecimal getResponseMonetaryValue(String responseBodyValue) {
        BigDecimal jsonBigDecimalValueFromResponseBody = setJsonPathReturnType().using(config).get(responseBodyValue);
        if(jsonBigDecimalValueFromResponseBody == null) {
            return modifyNullToZeroValue(jsonBigDecimalValueFromResponseBody);
        }
        return jsonBigDecimalValueFromResponseBody.setScale(2, RoundingMode.HALF_EVEN);
    }

    public BigDecimal getValueGlobalBalanceAvailable(String responseBodyValue) {
        String valorNativo = getResponseStringValue(responseBodyValue);
        // Se o valor é "globalBalanceAvailable": 0 - retorna 0.00
        if ("0".equals(valorNativo)) {
            return new BigDecimal(valorNativo).setScale(2, RoundingMode.HALF_EVEN);
        }
        BigDecimal valorBigDecimal = new BigDecimal(valorNativo).setScale(2, RoundingMode.HALF_EVEN);
        if (valorBigDecimal == null) {
            return modifyNullToZeroValue(valorBigDecimal);
        } else {
            return valorBigDecimal;
        }
    }

    private BigDecimal modifyNullToZeroValue(BigDecimal value) {
        if (value == null){
            value = new BigDecimal("0.00");
            return value;
        }
        return value;
    }
}
