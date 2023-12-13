package br.com.realizecfi.orbi.screens.account;

import br.com.realizecfi.orbi.screens.BaseScreen;
import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;
import io.appium.java_client.pagefactory.iOSXCUITFindBy;
import org.junit.Assert;

public class EncerrarContaMotivosScreen extends BaseScreen {
    @iOSXCUITFindBy(accessibility = "Qual o motivo do cancelamento?")
    @AndroidFindBy(className = "android.widget.TextView")
    private MobileElement titleMotivoCancelamento;

    @iOSXCUITFindBy(accessibility = "button_continue")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/btnButton")
    private MobileElement btnContinuar;

    @iOSXCUITFindBy(iOSClassChain = "**/XCUIElementTypeButton[`label == \"Já possuo uma conta digital\"`]")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/radioButton1")
    private MobileElement motivo1;

    @iOSXCUITFindBy(iOSClassChain = "**/XCUIElementTypeButton[`label == \"Outro motivo\"`]")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/radioButton6")
    private MobileElement motivoOutro;

    @iOSXCUITFindBy(accessibility = "Descreva aqui o motivo")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/edtInputReason")
    private MobileElement descMotivo;

    public void validateTitleMotivoCancelamento(String text) {
        waitUntilElementIsVisible(titleMotivoCancelamento);
        Assert.assertEquals(text, titleMotivoCancelamento.getText());
    }

    public void btnIsEnable(String text) {
        Assert.assertTrue(btnContinuar.isEnabled());
        Assert.assertEquals(text, btnContinuar.getText());
    }

    public void btnIsDisable(String text) {
        if (System.getProperty("platformName").equals("Android")) {
            Assert.assertFalse(btnContinuar.isEnabled());
        }
        Assert.assertEquals(text, btnContinuar.getText());
    }

    public void clickOnMotivo1() {
        waitUntilElementIsVisible(motivo1);
        motivo1.click();
    }

    public void inputMotivoOutro(String text) {
        waitUntilElementIsVisible(descMotivo);
        inputText(descMotivo, text);
    }

    public void clickOnMotivoOutro() {
        waitUntilElementIsVisible(motivoOutro);
        motivoOutro.click();
    }

    public void clickOnContinuar() {
        btnContinuar.click();
    }
}
