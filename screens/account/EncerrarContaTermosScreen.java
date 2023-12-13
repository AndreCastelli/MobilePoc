package br.com.realizecfi.orbi.screens.account;

import br.com.realizecfi.orbi.screens.BaseScreen;
import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;
import io.appium.java_client.pagefactory.iOSXCUITFindBy;
import org.junit.Assert;

public class EncerrarContaTermosScreen extends BaseScreen {

    @iOSXCUITFindBy(iOSClassChain = "**/XCUIElementTypeStaticText[`label == \"Termos de cancelamento da conta\"`]")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/tvClosureTermsHeader")
    private MobileElement titleTermosCancelarConta;

    @iOSXCUITFindBy(accessibility = "button_cancel")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/btnButton")
    private MobileElement btnContinuar;

    @iOSXCUITFindBy(iOSClassChain = "**/XCUIElementTypeStaticText"
            + "[`label CONTAINS \"Solicito o cancelamento da minha conta\"`]")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/tvClosureTerms")
    private MobileElement termosEncerramento;

    @iOSXCUITFindBy(accessibility = "switch_accept")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/cbClosureTerms")
    private MobileElement checkboxEncerramento;

    public void validateTitleTerm(String text) {
        waitUntilElementIsVisible(titleTermosCancelarConta);
        Assert.assertEquals(text, titleTermosCancelarConta.getText());
    }

    public void validateTerms(String text) {
        Assert.assertTrue(termosEncerramento.isDisplayed());
        Assert.assertEquals(text, termosEncerramento.getText());
    }

    public void clickOnContinuar() {
        waitUntilElementIsVisible(btnContinuar);
        btnContinuar.click();
    }

    public void btnIsDisable(String text) {
        if (System.getProperty("platformName").equals("Android")) {
            Assert.assertFalse(btnContinuar.isEnabled());
        }
        Assert.assertEquals(text, btnContinuar.getText());
    }

    public void isCheckboxChecked(String expected) {
        if (System.getProperty("platformName").equals("iOS")) {
            String auxExpected;
            if ("true".equals(expected)) {
                auxExpected = "1";
            } else {
                auxExpected = "0";
            }

            Assert.assertEquals(auxExpected, checkboxEncerramento.getAttribute("value"));
        } else {
            Assert.assertEquals(expected, checkboxEncerramento.getAttribute("checked"));
        }
    }

    public void setCheckboxEncerramento() {
        checkboxEncerramento.click();
    }

    //Após criação da tela de senha do iOS, incluir validação
    public void inputPasswordScreen() {
        if (System.getProperty("platformName").equals("iOS")) {
            return;
        }

        Assert.assertTrue(findElementByText("Informe a senha do seu cartão").isDisplayed());
    }
}
