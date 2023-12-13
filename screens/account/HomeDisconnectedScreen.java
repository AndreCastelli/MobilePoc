package br.com.realizecfi.orbi.screens.account;

import br.com.realizecfi.orbi.screens.BaseScreen;
import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;

public class HomeDisconnectedScreen extends BaseScreen {


    @AndroidFindBy(xpath = "//*[@text='InitFragment']")
    private MobileElement labelCheckHome;


    public boolean checkHome(){
        return   isElementVisible(labelCheckHome,15);
    }
}
