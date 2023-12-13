package br.com.realizecfi.orbi.runners;

import io.cucumber.junit.CucumberOptions;
import org.junit.BeforeClass;

@CucumberOptions(
tags = "@andre"
)
public class LocalAndroidAppRunner extends MainRun {
    @BeforeClass
    public static void config() {
        System.setProperty("labExecution", "localAndroid");
        System.setProperty("device.name", "emulator-5554");
        System.setProperty("platformName", "Android");
        System.setProperty("appPackage", "br.com.realizecfi.orbi.hml");
        System.setProperty("appActivity", "br.com.realizecfi.orbi.ui.splashscreen.SplashScreenActivity");
    }
}