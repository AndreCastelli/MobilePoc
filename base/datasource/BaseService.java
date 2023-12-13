package br.com.realizecfi.orbi.base.datasource;

import br.com.realizecfi.orbi.base.AppiumDriverManager;
import br.com.realizecfi.orbi.base.util.PropertiesUtil;
import io.restassured.http.ContentType;
import io.restassured.response.Response;

import java.util.Map;

import static io.restassured.RestAssured.given;

public class BaseService {
    private static final int STATUS_CODE_OK = 200;
    protected PropertiesUtil propertiesUtil;

    public Response doForceJobExecute(String resource) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .when()
                .get(resource);
    }

    public Response doGetRequestOneAttribute(String resource, String param) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .when()
                .get(resource, param);
    }

    public Response doGetRequestWthPagination(String resource, long pageNumber) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .queryParam("page", pageNumber)
                .when()
                .get(resource)
                .then()
                .statusCode(STATUS_CODE_OK)
                .contentType(ContentType.JSON)
                .extract()
                .response();
    }

    public Response doGetRequestWithQueryParam(String resource, String param, String queryParamName, int queryParam) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .queryParam(queryParamName, queryParam)
                .when()
                .get(resource, param);
    }

    public Response doPostRequestMap(Map payloadMap, String resource) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .contentType(ContentType.JSON)
                .body(payloadMap)
                .when()
                .post(resource);
    }

    public Response doPostRequestMapWithQueryParams(String payloadMap, Map params, String resource) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .contentType(ContentType.TEXT)
                .queryParams(params)
                .body(payloadMap)
                .when()
                .post(resource);
    }

    public Response doGetRequestWithListParams(Map params, String resource) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .contentType(ContentType.JSON)
                .params(params)
                .when()
                .get(resource);
    }

    public Response doGetRequestWithPathParams(Map<String, String> pathParams, String resource) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .contentType(ContentType.JSON)
                .pathParams(pathParams)
                .when()
                .get(resource);
    }


    public Response doPostRequestJson(String payloadJson, String resource) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .contentType(ContentType.JSON)
                .body(payloadJson)
                .when()
                .post(resource);
    }

    public Response doPostRequestQuery(Map<String, Object> queryParams, String resource) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .contentType(ContentType.JSON)
                .queryParams(queryParams)
                .when()
                .post(resource);
    }

    public Response doGetRequestQuery(Map<String, Object> payloadJson, String resource) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .contentType(ContentType.JSON)
                .queryParams(payloadJson)
                .when()
                .get(resource);
    }

    public Response doGetRequestJson(String payloadJson, String resource) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .contentType(ContentType.JSON)
                .body(payloadJson)
                .when()
                .get(resource);
    }

    public Response doDeleteRequest(String resource, String param) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .when()
                .delete(resource, param);
    }

    public String getAttributeNotAuthen(Map payloadMap, String attribute) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .formParams(payloadMap)
                .when()
                .post()
                .then()
                .extract().path(attribute);
    }

    public String getAttributeNotAuthen(Map payloadMap, String resource, String attribute) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .formParams(payloadMap)
                .when()
                .post(resource)
                .then()
                .extract().path(attribute);
    }

    public Response doPostRequestNoPayload(String resource) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .contentType(ContentType.JSON)
                 .when()
                .post(resource);
    }

    public Response doGetWithoutParameters(String resource) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .contentType(ContentType.JSON)
                .when()
                .get(resource);
    }

    public String getAttributeFromPostRequest(String payloadJson, String resource, String attribute) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .contentType(ContentType.JSON)
                .body(payloadJson)
                .when()
                .post(resource)
                .then()
                .extract().path(attribute);
    }

    public Response doPatchRequestWithQueryParam(Map params, String resource) {
        return given()
                .spec(AppiumDriverManager.shared().getRequest())
                .contentType(ContentType.JSON)
                .queryParams(params)
                .when()
                .patch(resource);
    }
}
