package br.com.realizecfi.orbi.runners;

import org.junit.BeforeClass;

public class BrowserStackAndroidAppRunner extends MainRun {
    @BeforeClass
    public static void config() {
        System.setProperty("labExecution", "mobileAppBrowserstack");
        System.setProperty("platformName", "Android");
    }
}