package br.com.realizecfi.orbi.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@RunWith(Cucumber.class)

@CucumberOptions(
    features = "src/test/resources/feature",
    glue = {"br.com.realizecfi.orbi.steps"},
    monochrome = true,
        tags = "@andre",
    plugin = { "pretty", "json:target/cucumber-reports/CucumberJson.json" },
    snippets = CucumberOptions.SnippetType.CAMELCASE, dryRun = false
)

public class MainRun {
    @BeforeClass
    public static void configPrincipal() {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        LocalDateTime now = LocalDateTime.now();
        System.setProperty("project.build", dtf.format(now));
        System.setProperty("browserstack.appium_version", "1.20.2");
    }
}