package br.com.realizecfi.orbi.screens.account;

import br.com.realizecfi.orbi.screens.BaseScreen;
import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;
import org.junit.Assert;

public class TransferenciaRealizadaScreen extends BaseScreen {

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/collapsingToolbar")
    private MobileElement titleTudoCerto;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/textViewTransaction")
    private MobileElement infoTransferencia;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/btnViewReceipt")
    private MobileElement btnVerComprovante;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/btnNewTransaction")
    private MobileElement btnFazerNewTransaction;

    @AndroidFindBy(className = "android.widget.ImageButton")
    private MobileElement btnFechar;

    public void validateTitleTransferenciaRealizada(String title) {
        Assert.assertTrue(isElementVisible(titleTudoCerto));
        Assert.assertEquals(title, titleTudoCerto.getAttribute("content-desc"));
    }

    public void validateInfoTransferenciaRealizada(String text) {
        Assert.assertTrue(isElementVisible(infoTransferencia));
        Assert.assertEquals(text, infoTransferencia.getText());
    }

    public void btnVerComprovanteIsEnable() {
        Assert.assertTrue(btnVerComprovante.isEnabled());
    }

    public void btnFazerNovaTransferenciaIsEnable() {
        Assert.assertTrue(btnFazerNewTransaction.isEnabled());
    }

    public void clickOnFazerNovaTransferencia() {
        waitUntilElementIsVisible(btnFazerNewTransaction);
        btnFazerNewTransaction.click();
    }

    public void clickFecharTransferencia() {
        waitUntilElementIsVisible(btnFechar);
        btnFechar.click();
    }
}
