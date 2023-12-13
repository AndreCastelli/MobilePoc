package br.com.realizecfi.orbi.screens;

import br.com.realizecfi.orbi.base.AppiumDriverManager;
import br.com.realizecfi.orbi.base.util.FileUtil;
import br.com.realizecfi.orbi.base.util.MathUtil;
import com.google.common.collect.Lists;
import io.appium.java_client.*;
import io.appium.java_client.pagefactory.AndroidFindBy;
import io.appium.java_client.pagefactory.AppiumFieldDecorator;
import io.appium.java_client.pagefactory.iOSXCUITFindBy;
import io.appium.java_client.touch.TapOptions;
import io.appium.java_client.touch.WaitOptions;
import io.appium.java_client.touch.offset.ElementOption;
import io.appium.java_client.touch.offset.PointOption;
import org.json.JSONArray;
import org.json.JSONObject;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.remote.RemoteWebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.util.*;
import java.util.concurrent.TimeUnit;

public class BaseScreen extends RemoteWebElement {

    private static final String PROCESSING_SITUATION_INVOICE_CLOSED = "CLOSED";
    private static final String PROCESSING_SITUATION_INVOICE_OPENED = "OPENED";

    protected AppiumDriver driver;
    protected WebDriverWait wait;
    Actions actions;
    TouchAction touchAction;
    private FileUtil fileUtil;
    Dimension size;

    @AndroidFindBy(id = "android:id/date_picker_header_year")
    private MobileElement yearCalendar;

    @AndroidFindBy(accessibility = "Next month")
    private MobileElement nextMonth;

    @AndroidFindBy(accessibility = "Previous month")
    private MobileElement previousMonth;

    @iOSXCUITFindBy(accessibility = "OK")
    @AndroidFindBy(id = "android:id/button1")
    private MobileElement applyDate;

    public BaseScreen() {
        driver = AppiumDriverManager.shared().getDriver();
        wait = new WebDriverWait(driver, 15);
        PageFactory.initElements(new AppiumFieldDecorator(driver), this);
        actions = new Actions(driver);
        touchAction = new TouchAction(driver);
        fileUtil = new FileUtil();
    }

    public boolean isElementVisible(MobileElement element) {
        try {
            wait.until(ExpectedConditions.visibilityOf(element));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean isElementVisible(MobileElement element, int timeout) {
        WebDriverWait waitLocal;
        try {
            waitLocal = new WebDriverWait(driver, timeout);
            waitLocal.until(ExpectedConditions.visibilityOf(element));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean isElementInvisible(MobileElement element, int timeout) {
        WebDriverWait waitLocal;
        try {
            waitLocal = new WebDriverWait(driver, timeout);
            waitLocal.until(ExpectedConditions.invisibilityOfAllElements(element));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public void waitUntilElementIsVisible(MobileElement element) {
        try {
            wait.until(ExpectedConditions.visibilityOf(element));
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public boolean isDisplayed(MobileElement element) {
        try {
            return element.isDisplayed();
        } catch (Exception e) {
            return false;
        }
    }

    public void waitUntilTheElementIsClickable(MobileElement element) {
        try {
            wait.until(ExpectedConditions.elementToBeClickable(element));
        } catch (Exception e) {
            throw new RuntimeException("Elemento " + element + " não foi carregado.");
        }
    }

    public boolean waitForThePBarToBeInvisible() {
        try {
            MobileElement element = (MobileElement) driver.findElement(By.id("br.com.realizecfi.orbi.hml:id/pBar"));
            FluentWait<AppiumDriver> fluentWait = new AppiumFluentWait<>(driver)
                    .pollingEvery(500, TimeUnit.MILLISECONDS)
                    .withTimeout(15, TimeUnit.SECONDS)
                    .ignoring(NoSuchElementException.class);
            fluentWait.until(ExpectedConditions.invisibilityOf(element));
            return true;
        } catch (NoSuchElementException e) {
            return false;
        }
    }

    public boolean waitForElementToBeInvisible(String elemento) {
        try {
            MobileElement element = (MobileElement) driver.findElement(By.id(elemento));
            FluentWait<AppiumDriver> fluentWait = new AppiumFluentWait<>(driver)
                    .pollingEvery(500, TimeUnit.MILLISECONDS)
                    .withTimeout(15, TimeUnit.SECONDS)
                    .ignoring(NoSuchElementException.class);
            fluentWait.until(ExpectedConditions.invisibilityOf(element));
            return true;
        } catch (NoSuchElementException e) {
            return false;
        }
    }

    public MobileElement findElementByText(String text) {
        try {
            if (System.getProperty("platformName").equals("iOS")) {
                wait.until(ExpectedConditions.presenceOfElementLocated(
                        MobileBy.iOSNsPredicateString("label == \"" + text + "\"")));

                return (MobileElement) driver.findElement(MobileBy.iOSNsPredicateString("label == \"" + text + "\""));
            } else {
                wait.until(ExpectedConditions.presenceOfElementLocated(MobileBy.AndroidUIAutomator(
                        "new UiSelector().text(\"" + text + "\")")));

                return (MobileElement) driver.findElement(
                        MobileBy.AndroidUIAutomator("new UiSelector().text(\"" + text + "\")"));
            }
        } catch (NoSuchElementException e) {
            throw new RuntimeException(
                    "Elemento " + text + " não foi encontrado. Log: " + Arrays.toString(e.getStackTrace()));
        }
    }

    public MobileElement findElementByTextContains(String text) {
        try {
            if (System.getProperty("platformName").equals("iOS")) {
                wait.until(ExpectedConditions.presenceOfElementLocated(
                        MobileBy.iOSNsPredicateString("label CONTAINS \"" + text + "\"")));

                return (MobileElement) driver.findElement(MobileBy.iOSNsPredicateString("label CONTAINS \"" + text + "\""));
            } else {
                wait.until(ExpectedConditions.presenceOfElementLocated(MobileBy.AndroidUIAutomator(
                        "new UiSelector().textContains(\"" + text + "\")")));

                return (MobileElement) driver.findElement(
                        MobileBy.AndroidUIAutomator("new UiSelector().textContains(\"" + text + "\")"));
            }
        } catch (NoSuchElementException e) {
            throw new RuntimeException(
                    "Elemento " + text + " não foi encontrado. Log: " + Arrays.toString(e.getStackTrace()));
        }
    }

    public void inputTextAndEnter(MobileElement element, String value) {
        element.sendKeys(value + "\n");
    }

    public void inputText(MobileElement element, String value) {
        element.click();
        actions.sendKeys(value).perform();

        if (System.getProperty("platformName").equals("iOS")) {
            driver.getKeyboard().pressKey("\n");
        }
    }

    public void tapOn(MobileElement element) {
        touchAction.tap(TapOptions.tapOptions().withElement(ElementOption.element(element))).perform();
    }

    /**
     * Turn Network On Off
     *
     * @param type   wifi/data
     * @param option enable/disable
     */
    public void turnNetworkOnOff(String type, String option) {
        try {
            Map<String, Object> args = new HashMap<>();
            args.put("command", "svc");
            args.put("args", Lists.newArrayList(type, option));
            driver.executeScript("mobile: shell", args);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void clickTo(int xOffsetOrigin, int yOffsetOrigin) {
        new TouchAction<>(driver).tap(PointOption.point(xOffsetOrigin, yOffsetOrigin)).release().perform();
    }

    public void swipeTo(int xOffsetOrigin, int yOffsetOrigin, int xOffsetFinal, int yOffsetFinal) {
        new TouchAction<>(driver).press(PointOption.point(xOffsetOrigin, yOffsetOrigin))
                .waitAction(WaitOptions.waitOptions(Duration.ofMillis(200)))
                .moveTo(PointOption.point(xOffsetFinal, yOffsetFinal)).release().perform();
    }

    public MobileElement findElementByContentDesc(String text) {
        MobileElement element = null;
        try {
            element = (MobileElement) driver.findElementByXPath("//*[@content-desc='" + text + "']");
        } catch (Exception e) {
            System.out.println(e);
            throw new RuntimeException("Elemento " + text + " não foi encontrado");
        }
        return element;
    }

    public String getMessageFromJsonJile(String filePath, String message) throws IOException {
        String jsonFileMessages = fileUtil.generateStringFromResource(filePath);
        JSONArray messageArray = new JSONArray(jsonFileMessages);

        for (int i = 0; i < messageArray.length(); i++) {
            JSONObject messageJson = messageArray.getJSONObject(i);

            if (messageJson.getString("type").equals(message)) {
                return messageJson.getString("message");
            }
        }
        return null;
    }

    public void grantPermissionForTheApp() {
        if (System.getProperty("platformName").equals("iOS")) {
            driver.findElementByAccessibilityId("OK").click();
        }
    }

    public void clickItemShortcut(String shortcut, String screen) {
        int cont = 0;
        int i = 0;
        List<MobileElement> item;
        while (true) {
            try {
                if (System.getProperty("platformName").equals("Android")) {
                    item = driver.findElements(
                            By.id("br.com.realizecfi.orbi.hml:id/txtTitleFeatureCarousel"));
                } else if ("Conta".equals(screen)) {
                    item = driver.findElements(By.xpath("//XCUIElementTypeCollectionView//XCUIElementTypeStaticText"));
                } else {
                    item = driver.findElements(By.xpath("//XCUIElementTypeStaticText[@name=\"horizontal_menu_card_title\"]"));
                }

                String shortcutScreen = item.get(cont).getText();
                if (shortcutScreen.equals(shortcut)) {
                    Assert.assertEquals(shortcutScreen, shortcut);
                    item.get(cont).click();
                    break;
                }
                cont++;
                if (item.size() == cont) {
                    swipeToShortcut(screen);
                    i++;

                    if (i > 5) {
                        break;
                    }
                    cont = 0;
                }

            } catch (Exception exp) {
                exp.printStackTrace();
                break;
            }
        }
    }

    public void swipeToShortcut(String screen) {
        size = driver.manage().window().getSize();

        int xOffsetOrigin = (int) (size.width * 0.95);
        int xOffsetFinal = (int) (size.width * 0.10);

        if ("home".equals(screen)) {
            int yOffsetOrigin = (int) (size.height * 0.31);

            swipeTo(xOffsetOrigin, yOffsetOrigin, xOffsetFinal, yOffsetOrigin);

        } else {
            int yOffsetOrigin = (int) (size.height * 0.40);

            swipeTo(xOffsetOrigin, yOffsetOrigin, xOffsetFinal, yOffsetOrigin);
        }
    }

    public String formatFrontendStringValue(String textFromScreen) {
        return textFromScreen.replaceAll("[.]", "")
                .replace(',', '.').replace("R$ ", "R$")
                .replace("\u00a0", "");
    }

    // Implementar metodo para receber uma lista de regex/Replacement
    public String replaceAllByRegex(String stringToReplace, String StringRegex, String Replacement) {
        return stringToReplace.replace(StringRegex, Replacement);
    }

    public void ScrollToElementyById(String element) {
        driver.findElement(MobileBy.AndroidUIAutomator("new UiScrollable(new UiSelector().scrollable(true).instance(0)).scrollIntoView(new UiSelector().resourceId(\""+element+"\").instance(0));"));
    }

    public void inputDatePicker(String date) throws ParseException {
        if ("".equals(date)) {
            return;
        }

        String[] dates = date.split("/");

        if (System.getProperty("platformName").equals("iOS")) {
            Date dateAux = new SimpleDateFormat("dd/MM/yyyy").parse(date);
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(dateAux);
            String month = new SimpleDateFormat("MMMM", new Locale("pt", "BR")).format(dateAux);

            List<MobileElement> pickers = driver.findElements(By.className("XCUIElementTypePickerWheel"));
            int day = Integer.parseInt(dates[0]);
            pickers.get(0).sendKeys(String.valueOf(day));
            pickers.get(1).sendKeys(month);
            pickers.get(2).sendKeys(dates[2]);
            applyDate.click();
            return;

        }

        yearCalendar.click();
        driver.findElement(By.xpath("*//android.widget.TextView[contains(@text, '" + dates[2] + "') "
                + "and @resource-id='android:id/text1']")).click();

        String today = driver.findElement(By.id("android:id/date_picker_header_date")).getAttribute("name");

        today = today.substring(MathUtil.FIVE, MathUtil.EIGHT);

        Date dateAux = new SimpleDateFormat("MMM", Locale.ENGLISH).parse(today);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(dateAux);
        int currentMonth = calendar.get(Calendar.MONTH) + 1;
        int monthChanges = Integer.parseInt(dates[1]) - currentMonth;

        if (monthChanges > 0) {
            for (int i = 0; i < monthChanges; i++) {
                nextMonth.click();
            }
        } else if (monthChanges < 0) {
            monthChanges = monthChanges * -1;
            for (int i = 0; i < monthChanges; i++) {
                previousMonth.click();
            }
        }

        driver.findElement(By.xpath("//android.view.View[@text='" + Integer.parseInt(dates[0]) + "']")).click();
        applyDate.click();
    }

    public List<String> returnListValueByWebElement(List<MobileElement> mobileElementList) {
        List<String> listStringTotalValueInvoiceHistory = new ArrayList<>();
        for (WebElement element : mobileElementList) {
            listStringTotalValueInvoiceHistory.add(element.getText());
        }

        return listStringTotalValueInvoiceHistory;
    }

    public List<String> convertProcessingSitutationStatus(List<String> list) {
        Collections.replaceAll(list, "Fatura aberta", PROCESSING_SITUATION_INVOICE_OPENED);
        Collections.replaceAll(list, "Fatura fechada", PROCESSING_SITUATION_INVOICE_CLOSED);
        Collections.replaceAll(list, "Fatura paga", PROCESSING_SITUATION_INVOICE_CLOSED);

        return list;
    }
}
