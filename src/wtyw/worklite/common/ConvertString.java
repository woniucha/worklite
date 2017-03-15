package wtyw.worklite.common;

public class ConvertString {

	public String getStr(String str)
	{
		try
		{
			String temp_p = str;
			byte[] temp_t = temp_p.getBytes("GB2312");
			String temp = new String(temp_t);
			return temp;
		}catch(Exception e)
		{
			
		}
		return "null";
	}

}
