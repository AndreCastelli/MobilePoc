package br.com.realizecfi.orbi.screens.account;

import br.com.realizecfi.orbi.screens.BaseScreen;
import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;
import org.junit.Assert;

public class InserirValorTransferenciaScreen extends BaseScreen {

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/collapsingToolbar")
    private MobileElement titleValorTranferencia;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/txtBalanceBalanceCardView")
    private MobileElement balance;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/customEditText")
    private MobileElement customEditValor;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/imgHideShowBalanceCardView")
    private MobileElement btnShowBalance;

    public void validateTitleValueTransaction(String title) {
        Assert.assertTrue(isElementVisible(titleValorTranferencia));
        Assert.assertEquals(title, titleValorTranferencia.getAttribute("content-desc"));
    }

    public void validateBalance(String balanceExpected) {
        String balance = this.balance.getText();
        int cont = 1;
        while (balance.contains("-") & cont <= 3) {
            cont = cont + 1;
            clickOnShowBalance();
            balance = this.balance.getText();
        }
        Assert.assertEquals(balanceExpected, this.balance.getText());
    }

    public void verifyBalanceIsVisible() {
        waitUntilElementIsVisible(balance);
        String balance = this.balance.getText();
            int cont = 1;
            while (balance.contains("-") & cont <= 3) {
                cont = cont + 1;
                clickOnShowBalance();
                balance = this.balance.getText();
            }
        Assert.assertFalse("Não retornou o valor do saldo", balance.contains("-"));
    }

    public void clickOnShowBalance() {
        btnShowBalance.click();
    }

    public void validateValueVisible() {
        Assert.assertTrue(isElementVisible(customEditValor));
    }

    public String inputValue(String valor) {
        inputText(customEditValor, valor);

        return valor;
    }
}
