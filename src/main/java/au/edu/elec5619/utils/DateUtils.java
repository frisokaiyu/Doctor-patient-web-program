package au.edu.elec5619.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtils {
	 
    public static void main(String[] args) {
        //printWeekdays();
    	System.out.println(getDate(0));
    }
 
    private static final int FIRST_DAY = Calendar.MONDAY;
 
    private static void printWeekdays() {
        Calendar calendar = Calendar.getInstance();
        setToFirstDay(calendar);
        for (int i = 0; i < 7; i++) {
            printDay(calendar);
            calendar.add(Calendar.DATE, 1);
        }
    }
 
    private static void setToFirstDay(Calendar calendar) {
        while (calendar.get(Calendar.DAY_OF_WEEK) != FIRST_DAY) {
            calendar.add(Calendar.DATE, -1);
        }
    }
 
    public static void printDay(Calendar calendar) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd EE");
        System.out.println(dateFormat.format(calendar.getTime()));
    }
    
    public static String getDate(int addDay){
    	Calendar calendar = Calendar.getInstance();
    	calendar.add(Calendar.DATE, addDay);
    	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    	return dateFormat.format(calendar.getTime());
    }
 
}