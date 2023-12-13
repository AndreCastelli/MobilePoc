package br.com.realizecfi.orbi.screens.account;

import br.com.realizecfi.orbi.screens.BaseScreen;
import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;
import io.appium.java_client.pagefactory.iOSXCUITFindBy;
import org.junit.Assert;

public class EncerrarContaInicioScreen extends BaseScreen {
    @iOSXCUITFindBy(iOSClassChain = "**/XCUIElementTypeStaticText[`label == \"Cancelar conta\"`][1]")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/tvClosureHeader")
    private MobileElement titleCancelarConta;

    @iOSXCUITFindBy(accessibility = "button_cancel")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/btnButton")
    private MobileElement btnCancelarMinhaConta;

    public void validateTitleCancelar(String text) {
        waitUntilElementIsVisible(titleCancelarConta);
        Assert.assertEquals(text, titleCancelarConta.getText());
    }

    public void btnIsEnable(String text) {
        Assert.assertTrue(btnCancelarMinhaConta.isEnabled());
        Assert.assertEquals(text, btnCancelarMinhaConta.getText());
    }

    public void clickOnCancelarMinhaConta() {
        waitUntilElementIsVisible(btnCancelarMinhaConta);
        btnCancelarMinhaConta.click();
    }
}
