package br.com.realizecfi.orbi.screens.account;

import br.com.realizecfi.orbi.screens.BaseScreen;
import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;

public class CreateAccountScreen extends BaseScreen {

    @AndroidFindBy(id = "com.realizecfi.orbi:id/btnCreateAccount")
    private MobileElement btnCreateYourAccount;

    public void clickCreateAccount() {
        waitUntilElementIsVisible(btnCreateYourAccount);
        btnCreateYourAccount.click();
        System.out.println("CLICOU EM CRIE SUA CONTA...................");
    }
}
