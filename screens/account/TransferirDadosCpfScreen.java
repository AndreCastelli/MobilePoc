package br.com.realizecfi.orbi.screens.account;

import br.com.realizecfi.orbi.screens.BaseScreen;
import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;
import io.appium.java_client.pagefactory.iOSXCUITFindBy;
import org.junit.Assert;

public class TransferirDadosCpfScreen extends BaseScreen {

    @iOSXCUITFindBy(accessibility = "Transferir")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/collapsingToolbar")
    private MobileElement titleInsiraCpf;

    @iOSXCUITFindBy(iOSNsPredicate = "type == 'XCUIElementTypeTextField'")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/customEditText")
    private MobileElement customEditCpf;

    @iOSXCUITFindBy(iOSNsPredicate = "label == \"Continuar\" AND name == \"Continuar\" AND type == \"XCUIElementTypeButton\"")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/btnButton")
    private MobileElement bntContinuar;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/textinput_helper_text")
    private MobileElement msgDadoInvalido;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/cl_alert")
    private MobileElement alertDadoInvalido;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/tv_subtitle")
    private MobileElement msgAlert;

    public void validateTitleInsiraCpf() {
        waitUntilElementIsVisible(titleInsiraCpf);
        Assert.assertTrue(isElementVisible(titleInsiraCpf));
    }

    public void validateCpfVisible() {
        Assert.assertTrue(isElementVisible(customEditCpf));
    }

    public void validateDescBtnContinuar(String text) {
        Assert.assertEquals(text, bntContinuar.getText());
    }

    public void btnContinuarIsDisable() {
        Assert.assertTrue(!bntContinuar.isEnabled());
    }

    public void inputCpf(String cpf) {
        inputText(customEditCpf, cpf);
    }

    public void btnContinuarIsEnable() {
        Assert.assertTrue(bntContinuar.isEnabled());
    }

    public void validateMsgInvalidData(String text) {
        Assert.assertEquals(text, msgDadoInvalido.getText());
    }

    public void alertInvalidDataIsEnable() {
        Assert.assertTrue(alertDadoInvalido.isEnabled());
    }

    public void validateMsgAlert(String text) {
        Assert.assertTrue(isElementVisible(msgAlert));
        Assert.assertEquals(text, msgAlert.getText());
    }

    public void clickOnContinuar() {
        waitUntilElementIsVisible(bntContinuar);
        bntContinuar.click();
    }
}
