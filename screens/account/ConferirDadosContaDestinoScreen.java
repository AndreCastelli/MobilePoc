package br.com.realizecfi.orbi.screens.account;

import br.com.realizecfi.orbi.screens.BaseScreen;
import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;
import org.junit.Assert;

public class ConferirDadosContaDestinoScreen extends BaseScreen {

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/collapsingToolbar")
    private MobileElement titleTranferencia;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/progressBarCpf")
    private MobileElement progressBar;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/tvTitle")
    private MobileElement name;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/tvDescription")
    private MobileElement contaAgencia;

    public void validateTitleTransferencia(String title) {
        waitForElementToBeInvisible(progressBar.getId());
        Assert.assertEquals(title, titleTranferencia.getAttribute("content-desc"));
    }

    public void validateName(String nome) {
        Assert.assertEquals(nome, name.getText());
    }

    public void validateContaAgencia(String dados) {
        Assert.assertEquals(dados, contaAgencia.getText());
    }

}
