package wtyw.worklite.common;

import java.util.Calendar;

public class GenerateCurrentDate {
	
	private String strYear;
	private String strMonth;
	private String strDate;
	private String currentDate;

	public String getCurrentDate(){
		
		Calendar calendar  = Calendar.getInstance();
		int date = calendar.get(Calendar.DATE);
		int month = calendar.get(Calendar.MONTH)+1;
		int year = calendar.get(Calendar.YEAR);
        
        strDate = String.valueOf(date);
        if (strDate.length()<2)
        {
    	    strDate = "0" + strDate;
        }
        strMonth = String.valueOf(month);
        if (strMonth.length()<2)
        {
    	    strMonth = "0" + strMonth;
        }
        strYear = String.valueOf(year);
        currentDate = strYear + "-" + strMonth + "-" + strDate;
        return currentDate;
	}
	

}
