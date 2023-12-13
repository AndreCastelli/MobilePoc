package br.com.realizecfi.orbi.screens.account;

import br.com.realizecfi.orbi.screens.BaseScreen;
import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;
import io.appium.java_client.pagefactory.iOSXCUITFindBy;
import org.junit.Assert;

import java.text.DecimalFormat;

public class ContaOrbiScreen extends BaseScreen {

    @iOSXCUITFindBy(accessibility = "Transferir para uma conta Orbi")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/label")
    private MobileElement titleTransferirContaOrbi;

    @AndroidFindBy(xpath = "//android.widget.TextView[@content-desc=\"Orbi\"]")
    private MobileElement btnShowBalance;

    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/tvBalanceValue")
    private MobileElement lbBalanceValue;

    @AndroidFindBy(xpath = "//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.TextView[3]")
    private MobileElement lbTransacaoValue;

    @AndroidFindBy(xpath = "//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.TextView[2]")
    private MobileElement lbDate;

    @AndroidFindBy(xpath = "//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.TextView[1]")
    private MobileElement lbTransferencia;

    static final String ANDROID = "Android";
    static final String PLATFORM = "platformName";

    public void validateAccount(String textConta) {
        MobileElement titleConta = findElementByText(textConta);
        if (System.getProperty(PLATFORM).equals(ANDROID)) {
            waitUntilElementIsVisible(titleConta);
            Assert.assertEquals(textConta, titleConta.getText());
        } else {
            Assert.assertTrue(findElementByText(textConta).isDisplayed());
        }
    }

    public String getBalanceValue() {
        Assert.assertTrue(isElementVisible(lbBalanceValue));
        String balance = lbBalanceValue.getText();
        
        return balance;
    }

    public void validateBalanceLessTransaction(String balance, String valueTransf) {
        double balanceFinal = returnDoubleValue(balance) - returnDoubleValue(valueTransf);
        DecimalFormat df = new DecimalFormat("0.00");
        String balanceExpected = df.format(balanceFinal);
        String balanceActual = df.format(returnDoubleValue(lbBalanceValue.getText()));
        Assert.assertEquals(balanceExpected, balanceActual);
    }

    public void validateBalanceAddTransaction(String balance, String valueTransf) {
        double balanceFinal = returnDoubleValue(balance) + returnDoubleValue(valueTransf);
        DecimalFormat df = new DecimalFormat("0.00");
        String balanceExpected = df.format(balanceFinal);
        String balanceActual = df.format(returnDoubleValue(lbBalanceValue.getText()));
        Assert.assertEquals(balanceExpected, balanceActual);
    }

    public Double returnDoubleValue(String value) {
        String replaceValue = value.replaceAll("\\.","").replaceAll(",",".");
        double valueDouble = Double.parseDouble(replaceValue);

        return valueDouble;
    }

    public void validateValueTransaction(String transacaoValue) {
        Assert.assertTrue(isElementVisible(lbTransacaoValue));
        Assert.assertEquals(transacaoValue, lbTransacaoValue.getText());
    }

    public void validateDate(String hoje) {
        Assert.assertTrue(isElementVisible(lbDate));
        Assert.assertEquals(hoje, lbDate.getText());
    }

    public void validateLbTransaction(String transferencia) {
        Assert.assertTrue(isElementVisible(lbTransferencia));
        Assert.assertEquals(transferencia, lbTransferencia.getText());
    }
}
