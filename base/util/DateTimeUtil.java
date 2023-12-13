package br.com.realizecfi.orbi.base.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.*;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public class DateTimeUtil {

    LocalDate date;
    LocalTime time;
    String dockConnectorDateFormat = "yyyy-MM-dd";

    public DateTimeUtil() {
        date = LocalDate.now();
        time = LocalTime.now();
    }

    public DateTimeFormatter formatDate(String formatter) {
        return DateTimeFormatter.ofPattern(formatter);
    }

    public String randomBirthday(int startYear, int endYear) {
        int day = MathUtil.minAndMaxRandomNumber(MathUtil.ONE, MathUtil.TWENTY_EIGHT);
        int month = MathUtil.minAndMaxRandomNumber(MathUtil.ONE, MathUtil.TWELVE);
        int year = MathUtil.minAndMaxRandomNumber(startYear, endYear);
        date = LocalDate.of(year, month, day);

        return date.format(formatDate(dockConnectorDateFormat));
    }

    public String formatDateFromBackend(String invoiceDueDate) throws ParseException {
        SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat format2 = new SimpleDateFormat("dd/MM/yyyy");
        Date date = format1.parse(invoiceDueDate);
        return format2.format(date);
    }

}
