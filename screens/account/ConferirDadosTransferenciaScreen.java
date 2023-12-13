package br.com.realizecfi.orbi.screens.account;

import br.com.realizecfi.orbi.screens.BaseScreen;
import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;
import org.junit.Assert;

public class ConferirDadosTransferenciaScreen extends BaseScreen {

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/collapsingToolbar")
    private MobileElement titleDadosTranferencia;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/tvTransferBeneficiary")
    private MobileElement name;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/textViewValue")
    private MobileElement valorTransferencia;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/tvDestinationAccount")
    private MobileElement conta;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/tvBranchDestination")
    private MobileElement agencia;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/btnProceed")
    private MobileElement bntConfirmar;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/tvLoadingHeader")
    private MobileElement loading;

    public void validateTitleTransaction(String title) {
        findElementByContentDesc(titleDadosTranferencia.getAttribute("content-desc"));
        Assert.assertEquals(title, titleDadosTranferencia.getAttribute("content-desc"));
    }

    public void validateValueTransaction(String valor) {
        Assert.assertTrue(isElementVisible(valorTransferencia));
        Assert.assertEquals(valor, valorTransferencia.getText());
    }

    public void validateName(String nome) {
        Assert.assertEquals(nome, name.getText());
    }

    public void validateAccount(String dados) {
        Assert.assertEquals(dados, conta.getText());
    }

    public void validateAgencia(String dados) {
        Assert.assertEquals(dados, agencia.getText());
    }

    public void validateDescBtn(String text) {
        MobileElement descBtn = findElementByText(text);
        Assert.assertEquals(text ,descBtn.getText());
    }

    public void btnConfirmarIsEnable() {
        Assert.assertTrue(bntConfirmar.isEnabled());
    }

    public void clickOnConfirmar() {
        waitUntilElementIsVisible(bntConfirmar);
        bntConfirmar.click();
    }

    public void validateLoading(String mensagem, String compl) {
        waitUntilElementIsVisible(loading);
        Assert.assertTrue(loading.getText().contains(mensagem));
        Assert.assertTrue(loading.getText().contains(compl));
    }
}
