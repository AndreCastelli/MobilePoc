package br.com.realizecfi.orbi.screens.account;

import br.com.realizecfi.orbi.screens.BaseScreen;
import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;
import io.appium.java_client.pagefactory.iOSXCUITFindBy;
import org.junit.Assert;

public class TransferirScreen extends BaseScreen {

    @iOSXCUITFindBy(accessibility = "Transferir para uma conta Orbi")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/label")
    private MobileElement titleTransferirContaOrbi;

    @iOSXCUITFindBy(accessibility = "Transferir para conta Orbi")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/transferP2p")
    private MobileElement btnTransferirContaOrbi;

    @iOSXCUITFindBy(accessibility = "icnClose")
    private MobileElement btnClose;

    static final String ANDROID = "Android";
    static final String PLATFORM = "platformName";

    public void validateTitleTransferir(String text) {
        MobileElement tituloTransferir = findElementByText(text);
        if (System.getProperty(PLATFORM).equals(ANDROID)) {
            Assert.assertEquals(text, tituloTransferir.getText());
        } else {
            waitUntilElementIsVisible(tituloTransferir);
        }
    }

    public void validateDescBntTransferirContaOrbi(String text) {
        Assert.assertEquals(text, titleTransferirContaOrbi.getText());
    }

    public void clickOnTransferirContaOrbi() {
        waitUntilElementIsVisible(btnTransferirContaOrbi);
        btnTransferirContaOrbi.click();
    }
}
