package br.com.realizecfi.orbi.base;

import io.appium.java_client.AppiumDriver;
import io.cucumber.java.Scenario;
import io.restassured.builder.RequestSpecBuilder;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.openqa.selenium.remote.DesiredCapabilities;
import java.net.URL;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class AppiumDriverManager {
    private static AppiumDriverManager sharedInstance;
    private AppiumDriver driver;
    private Scenario scenario;
    private String profile;
    private Response response;
    private RequestSpecification request;
    private Map<String, Object> testData;
    private String deviceId;
    DesiredCapabilities capabilities;
    URL uri;

    public static synchronized AppiumDriverManager shared() {
        if (sharedInstance == null)
            sharedInstance = new AppiumDriverManager();

        return sharedInstance;
    }

    public Map<String, Object> getTestData() {
        return testData;
    }

    public void setTestData(Map<String, Object> testData) {
        this.testData = testData;
    }

    public Response getResponse() {
        return response;
    }

    public void setResponse(Response response) {
        this.response = response;
    }

    public RequestSpecification getRequest() {
        if (request == null) {
            request = new RequestSpecBuilder().build();
        }

        return request;
    }

    public void setHeaders(Map<String, ?> header) {
        this.getRequest().headers(header);
    }

    public void setRequest(RequestSpecification request) {
        this.request = request;
    }

    public AppiumDriver getDriver() {
        if (driver == null)
            createDriver();

        return driver;
    }

    public void setDriverConfiguration(DesiredCapabilities capabilities, URL uri) {
        this.capabilities = capabilities;
        this.uri = uri;
    }

    public void createDriver() {
        driver = new AppiumDriver(uri, capabilities);
        driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
    }

    public void setEnvironment(String profile, Scenario scenario) {
        setProfile(profile);
        this.scenario = scenario;
    }

    private void setProfile(String profile) {
        if (profile == null || !profile.trim().equalsIgnoreCase("local")) {
            this.profile = "default";
        } else {
            this.profile = profile.trim().toUpperCase();
        }
    }

    public void setBaseURI(String uri) {
        this.getRequest().baseUri(uri);
    }

    public String getProfile() {
        return profile;
    }

    public void teardownDriver() {
        markTestStatus();

        if (driver != null)
            driver.quit();

        driver = null;
    }

    public void markTestStatus() {

        if (System.getProperty("labExecution").equals("mobileAppBrowserstack")) {
            driver.executeScript(
                    "browserstack_executor: {\"action\": \"setSessionStatus\", \"arguments\": {\"status\": \""
                            + scenario.getStatus() + "\"}}");
        }
    }

    public void setDeviceId(String deviceId) {
        this.deviceId = deviceId;
    }

    public String getDeviceId() {
        return deviceId;
    }
}
