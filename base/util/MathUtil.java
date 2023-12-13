package br.com.realizecfi.orbi.base.util;

import java.text.DecimalFormat;
import java.util.UUID;

public class MathUtil {
    public static final int ZERO = 0;
    public static final int ONE = 1;
    public static final int TWO = 2;
    public static final int THREE = 3;
    public static final int FOUR = 4;
    public static final int FIVE = 5;
    public static final int SIX = 6;
    public static final int SEVEN = 7;
    public static final int EIGHT = 8;
    public static final int NINE = 9;
    public static final int TEN = 10;
    public static final int ELEVEN = 11;
    public static final int TWELVE = 12;
    public static final int EIGHTEEN = 18;
    public static final int TWENTY = 20;
    public static final int TWENTY_EIGHT = 28;
    public static final int FORTY = 40;
    public static final int SEVENTY = 70;
    public static final int HUNDRED = 100;
    public static final int ONE_THOUSAND_NINE_HUNDRED_SIXTY = 1960;
    public static final int TWO_THOUSAND = 2000;
    public static final int ONE_HUNDRED_THOUSAND = 100000;
    public static final int ONE_THOUSAND = 1000;
    public static final int THREE_THOUSAND = 3000;

    public static final String DEFAULT_PASSWORD = "687017";

    public static int getRandomNumber(int range) {
        return (int) (java.lang.Math.random() * range);
    }

    public static int minAndMaxRandomNumber(int min, int max) {
        return min + (int) (Math.random() * (max - min));
    }

    public static int getModRound(int dividend, int divider) {
        return (int) java.lang.Math.round(dividend - (java.lang.Math.floor(dividend / divider) * divider));
    }

    public static String uuidGenerator() {
        return UUID.randomUUID().toString();
    }
    
    public String convertNumberDoubleToDecimal(double number){
        DecimalFormat formatador = new DecimalFormat("0.00");
        return formatador.format(number).replace(",",".");
    }
}