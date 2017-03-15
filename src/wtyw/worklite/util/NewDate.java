package wtyw.worklite.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;


public class NewDate {


	//获取当前年份
	public static int newYear(){
		return Calendar.getInstance().get(Calendar.YEAR);
	}	
	
    //求两个时间之间隔的天数
	public static long betweenDate(String beginDate,String endDate) throws ParseException{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		long diffDate=0;
		try{
			   long beginDate1= sdf.parse(beginDate).getTime();
		       long endDate1 = sdf.parse(endDate).getTime();
		       diffDate = (endDate1 - beginDate1) / (1000 * 60 * 60 * 24); //计算间隔多少天，则除以毫秒到天的转换公式
		} catch (ParseException e) {
		         e.printStackTrace();
		}
		return diffDate;
	}
	

}
