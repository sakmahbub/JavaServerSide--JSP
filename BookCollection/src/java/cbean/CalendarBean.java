
package cbean;

import java.util.Calendar;
import java.util.Date;

public class CalendarBean {
    
     private Calendar calendar;

    public CalendarBean() {
        calendar = Calendar.getInstance();
    }

    public Date getTime() {
        return calendar.getTime();
    }

    public int getHour() {
      return calendar.get(Calendar.HOUR_OF_DAY);
    }

    public int getMinute() {
      return calendar.get(Calendar.MINUTE);
    }
}
