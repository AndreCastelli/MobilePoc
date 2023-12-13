package br.com.realizecfi.orbi.screens.cards;

import br.com.realizecfi.orbi.screens.BaseScreen;
import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;
import io.appium.java_client.pagefactory.iOSXCUITFindBy;

import java.util.List;

public class FutureInvoiceScreen extends BaseScreen {

    @iOSXCUITFindBy(className = "Não há nenhum lançamento até o momento.")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/odEmptyState_tvState")
    private MobileElement txtEmptyFutureInvoiceList;

    @iOSXCUITFindBy(id = "invoiceItemLabelYear")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/year")
    private List<MobileElement> listYearFutureInvoice;

    @iOSXCUITFindBy(className = "invoiceItemLabelTitle")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/state")
    private List<MobileElement> listStateFutureInvoice;

    @iOSXCUITFindBy(id = "invoiceItemLabelMonth")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/mounth")
    private List<MobileElement> listMonthFutureInvoice;

    @iOSXCUITFindBy(id = "invoiceItemLabelAmount")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/value")
    private List<MobileElement> listValueFutureInvoice;

    @iOSXCUITFindBy(id = "invoiceItemLabelAmount")
    @AndroidFindBy(id = "br.com.realizecfi.orbi.hml:id/value")
    private MobileElement fatura;

    public FutureInvoiceScreen() {

    }

    private void waitEmptyFutureInvoiceList() {
        waitUntilElementIsVisible(txtEmptyFutureInvoiceList);
    }

    public void waitLoadScreen() {
        waitUntilElementIsVisible(listYearFutureInvoice.get(0));
    }

    public String getTextEmptyFutureInvoiceList() {
        waitEmptyFutureInvoiceList();
        return txtEmptyFutureInvoiceList.getText();
    }

    public Boolean isEmptyFutureInvoiceListDisplayed() {
        waitEmptyFutureInvoiceList();
        return txtEmptyFutureInvoiceList.isDisplayed();
    }

    public Boolean isYearFutureInvoiceDisplayed() {
        waitLoadScreen();

        return listYearFutureInvoice.isEmpty();
    }

    public Boolean isMonthFutureInvoiceDisplayed() {
        waitLoadScreen();

        return listMonthFutureInvoice.isEmpty();
    }

    public Boolean isStateFutureInvoiceDisplayed() {
        waitLoadScreen();

        return listStateFutureInvoice.isEmpty();
    }

    public Boolean isSYearFutureInvoiceDisplayed() {
        waitLoadScreen();

        return listYearFutureInvoice.isEmpty();
    }

    public List<String> getListFutureInvoiceMonth() {
        waitLoadScreen();

        return returnListValueByWebElement(listMonthFutureInvoice);
    }

    public List<String> getListFutureInvoiceValue() {
        waitLoadScreen();

        return returnListValueByWebElement(listValueFutureInvoice);
    }

    public List<String> getListFutureInvoiceState() {
        waitLoadScreen();

        return returnListValueByWebElement(listStateFutureInvoice);
    }

    public List<String> convertStateList(List<String> list) {
        return convertProcessingSitutationStatus(list);
    }

    public String getListValueFutureInvoice() {
        waitLoadScreen();

        return fatura.getText();
    }
}
