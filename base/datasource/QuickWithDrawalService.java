package br.com.realizecfi.orbi.base.datasource;

import io.restassured.response.Response;

public class QuickWithDrawalService extends BaseService{

    public Response getLimitesSaqueRapido() {
        return doGetWithoutParameters("/v1/quick-withdraw/limit");
    }
}
