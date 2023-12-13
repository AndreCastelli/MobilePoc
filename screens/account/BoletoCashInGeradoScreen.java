package br.com.realizecfi.orbi.screens.account;

import br.com.realizecfi.orbi.screens.BaseScreen;
import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;
import org.junit.Assert;

public class BoletoCashInGeradoScreen extends BaseScreen {

    @AndroidFindBy(id = "br.com.realizecfi.orbi.sample:id/btnSlip")
    private MobileElement btnFeature;
    @AndroidFindBy(id = "br.com.realizecfi.orbi.sample:id/boletoGerado")
    private MobileElement titleBoletoCashInSucesso;
    @AndroidFindBy(id = "br.com.realizecfi.orbi.sample:id/tvValor")
    private MobileElement txtValorBoletoCashIn;
    @AndroidFindBy(id = "br.com.realizecfi.orbi.sample:id/tvData")
    private MobileElement txtVencimentoBoletoCashIn;
    @AndroidFindBy(id = "br.com.realizecfi.orbi.sample:id/tvbarras")
    private MobileElement txtCodigoBarrasBoletoCashIn;
    @AndroidFindBy(id = "br.com.realizecfi.orbi.sample:id/bt_copiar")
    private MobileElement btnCopiarCodigoBarras;
    @AndroidFindBy(id = "br.com.realizecfi.orbi.sample:id/esteBoleto")
    private MobileElement txtInformativoBoleto;
    @AndroidFindBy(id = "br.com.realizecfi.orbi.sample:id/esteBoleto")
    private MobileElement btnNovoDepositoBoleto;
    @AndroidFindBy(id = "br.com.realizecfi.orbi.sample:id/iv_close")
    private MobileElement btnFecharBoletoGerado;
    @AndroidFindBy(xpath = "//android.widget.Button[@text=\"Voltar para início\"]")
    private MobileElement btnVoltarInicio;
    @AndroidFindBy(xpath = "//android.widget.Button[@text=\"Fazer um novo depósito\"]")
    private MobileElement btnFazerNovoDeposito;
    @AndroidFindBy(xpath = "br.com.realizecfi.orbi.sample:id/boletoGerado")
    private MobileElement msgcodigocopiado;


    public void validaDadosBoletoCashIn() {
        waitUntilElementIsVisible(txtValorBoletoCashIn);
        waitUntilElementIsVisible(txtVencimentoBoletoCashIn);
        waitUntilElementIsVisible(txtCodigoBarrasBoletoCashIn);
    }

    public void validaBotoesBoletoCashIn(String opcao) {
        String opcaonatela = findElementByText(opcao).getText();
        Assert.assertEquals(opcao, opcaonatela);
    }

    public void validaTxtInformativoBoleto() {
        waitUntilElementIsVisible(txtInformativoBoleto);
    }

    public void clicaElementoPorTexto(String text) {
        findElementByText(text).click();
    }

    public void validaTelaBoletoCashIn(String nometela) {
        String titulotela = findElementByText(nometela).getText();
        Assert.assertEquals(nometela, titulotela);
    }

    public void fecharTela() {
        btnFecharBoletoGerado.click();
    }

    public void validaCodigoBoletoCopiado(String msgcodigocopiado) {
        String msgcodigo = findElementByText(msgcodigocopiado).getText();
        Assert.assertEquals(msgcodigocopiado, msgcodigo);
    }
}