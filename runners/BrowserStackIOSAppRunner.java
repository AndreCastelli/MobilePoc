package br.com.realizecfi.orbi.runners;

import org.junit.BeforeClass;

public class BrowserStackIOSAppRunner extends MainRun {
    @BeforeClass
    public static void config() {
        System.setProperty("labExecution", "mobileAppBrowserstack");
        System.setProperty("platformName", "iOS");
        System.setProperty("browserstack.appium_version", "1.20.2");
    }
}