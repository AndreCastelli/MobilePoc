package br.com.realizecfi.orbi.screens.account;

import br.com.realizecfi.orbi.screens.BaseScreen;
import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;
import org.junit.Assert;

public class ContaOrbiModalDeErroScreen extends BaseScreen {

    @AndroidFindBy(id = "br.com.realizecfi.orbi.sample:id/txtTitleBottomsheetError")
    private MobileElement txtModalError;
    @AndroidFindBy(id = "br.com.realizecfi.orbi.sample:id/imgCloseBottomsheetError")
    private MobileElement btnFecharModalErro;

    public void visualizaModalErro() {
        waitUntilElementIsVisible(txtModalError);
    }

    public void validaModalErro(String opcao) {
        String opcaonatela = findElementByText(opcao).getText();
        Assert.assertEquals(opcao, opcaonatela);
    }

    public void fecharModalErro() {
        btnFecharModalErro.click();
    }
}
