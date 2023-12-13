package br.com.realizecfi.orbi.screens.account;

import br.com.realizecfi.orbi.screens.BaseScreen;
import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;
import io.appium.java_client.pagefactory.iOSXCUITFindBy;
import org.junit.Assert;

public class EncerrarContaPendenciasScreen extends BaseScreen {
    @iOSXCUITFindBy(iOSClassChain = "**/XCUIElementTypeStaticText[`label == \"Cancelar conta\"`][1]")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/tvClosureHeader")
    private MobileElement titleCancelarConta;

    @iOSXCUITFindBy(accessibility = "button_cancel")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/btnButton")
    private MobileElement btnCancelarConta;

    @iOSXCUITFindBy(accessibility = "action_account_has_funds_description")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/description")
    private MobileElement descSaldo;

    public void validateTitleCancelar(String text) {
        waitUntilElementIsVisible(titleCancelarConta);
        Assert.assertEquals(text, titleCancelarConta.getText());
    }

    public void validateContainsSaldo(String text) {
        descSaldo.getText().contains(text);
    }

    public void btnIsEnable(String text) {
        waitForThePBarToBeInvisible();
        if (System.getProperty("platformName").equals("Android")) {
            Assert.assertTrue(btnCancelarConta.isEnabled());
        }
        Assert.assertEquals(text, btnCancelarConta.getText());
    }

    public void clickOnCancelarConta() {
        waitUntilElementIsVisible(btnCancelarConta);
        btnCancelarConta.click();
    }

    public void btnIsDisabled(String text) {
        waitUntilElementIsVisible(btnCancelarConta);
        if (System.getProperty("platformName").equals("Android")) {
            Assert.assertFalse(btnCancelarConta.isEnabled());
        }
            Assert.assertEquals(text, btnCancelarConta.getText());
    }
}
