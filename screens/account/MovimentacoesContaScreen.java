package br.com.realizecfi.orbi.screens.account;

import br.com.realizecfi.orbi.screens.BaseScreen;
import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;
import io.appium.java_client.pagefactory.iOSXCUITFindBy;
import org.junit.Assert;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;

import java.util.*;

public class MovimentacoesContaScreen extends BaseScreen {

    static final String ANDROID = "Android";
    static final String PLATFORM = "platformName";

    @iOSXCUITFindBy(accessibility = "icnFilter")
    @AndroidFindBy(accessibility = "Filtrar")
    private MobileElement filterButton;

    @iOSXCUITFindBy(accessibility = "Personalizado")
    @AndroidFindBy(accessibility = "Personalizado")
    private MobileElement customFilterButton;

    @iOSXCUITFindBy(iOSClassChain = "**/XCUIElementTypeButton[`label == \"Últimos 15 dias\"`]")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/buttonHalfMonth")
    private MobileElement lastFifteenDays;

    @iOSXCUITFindBy(iOSClassChain = "**/XCUIElementTypeButton[`label == \"Últimos 30 dias\"`]")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/buttonOneMonth")
    private MobileElement lastMonth;

    @iOSXCUITFindBy(iOSClassChain = "**/XCUIElementTypeButton[`label == \"Últimos 60 dias\"`]")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/buttonHalfMonth")
    private MobileElement lastTwoMonths;

    @iOSXCUITFindBy(iOSClassChain = "**/XCUIElementTypeButton[`label == \"Aplicar\"`]")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/btnButton")
    private MobileElement applyButton;

    @iOSXCUITFindBy(iOSClassChain = "**/XCUIElementTypeImage[`name == \"icnClose\"`]")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/tvFilterTag")
    private MobileElement filterTag;

    @iOSXCUITFindBy(iOSClassChain = "**/XCUIElementTypeTable")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/cstRowLayout")
    private List<MobileElement> transactionList;

    @iOSXCUITFindBy(iOSClassChain = "**/XCUIElementTypeStaticText[`label == \"Você não tem movimentações nas "
            + "datas selecionadas\"`]")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/odEmptyState_tvState")
    private MobileElement emptyList;

    @iOSXCUITFindBy(iOSClassChain = "**/XCUIElementTypeStaticText[`label == \"Início\"`]")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/llInitialDate")
    private MobileElement initialDate;

    @iOSXCUITFindBy(iOSClassChain = "**/XCUIElementTypeStaticText[`label == \"Fim\"`]")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/llFinalDate")
    private MobileElement endDate;

    public void clickOnFilterButton() {
        Assert.assertTrue(isElementVisible(filterButton));
        filterButton.click();
    }

    public void selectPremadeFilter(String days) {
        switch (days) {
            case "15":
                lastFifteenDays.click();
                break;

            case "30":
                lastMonth.click();
                break;

            case "60":
                lastTwoMonths.click();
                break;

            default:
                Assert.fail("Período não existe ou configurado.");
        }
        Assert.assertTrue(applyButton.isEnabled());
        applyButton.click();
    }

    public void checkTransactionList() {
        Assert.assertTrue(filterTag.isEnabled());
        if (isElementVisible(emptyList)) {
            Assert.assertTrue("Não há movimentações nesse período selecionado", emptyList.isDisplayed());
            return;
        }

        wait.until(ExpectedConditions.visibilityOf(transactionList.get(0)));
        Assert.assertTrue(transactionList.size() > 0);
    }

    public void selectCustomerFilter() {
        Assert.assertTrue(isElementVisible(customFilterButton));
        customFilterButton.click();
    }

    public void applyFilter() {
        applyButton.click();
    }

    public void selectInitialDate() {
        Assert.assertTrue(isElementVisible(initialDate));
        initialDate.click();
    }

    public void selectEndDate() {
        Assert.assertTrue(isElementVisible(endDate));
        endDate.click();
    }
}
