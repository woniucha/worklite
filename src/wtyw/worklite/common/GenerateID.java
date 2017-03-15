package wtyw.worklite.common;

import java.util.*;

public class GenerateID {

	// A - 任务
	// B - 图书编号
	// C - 
	// D - 令牌领用编号
	// E
	// F
	// G
	// H
	// I
	// J
	// K - 知识编号
	// O
	// P
	// Q
	// L - 借书编号
	// M - 月报编号
	// N
	// R
	// S
	// T - 令牌编号
	// U
	// V - 请假单编号
	// W - 周报编号
	// X
	// Y
	// Z
	//生成用户编号
	public String generateUserId() {
		String userID = "U" + this.generateRandomId();
		return userID;
	}
	//生成令牌领用编号
	public String generateTokenLendId() {
		String tokenID = "D" + this.generateRandomId();
		return tokenID;
	}
	
	//生成知识编号
	public String generateKnowledgeId() {

		String knowledgeID = "K" + this.generateRandomId();
		return knowledgeID;
	}
	//生成请假单编号
	public String generateVacationId() {

		String vacationID = "V" + this.generateRandomId();
		return vacationID;
	}
	
	//生成令牌编号
	public String generateTokenId() {

		String tokenID = "T" + this.generateRandomId();
		return tokenID;
	}
	
	//生成图书编号
	public String generateBookId() {

		String bookID = "B" + this.generateRandomId();
		return bookID;
	}

	//生成借书编号
	public String generateBookLendId() {

		String booklendID = "L" + this.generateRandomId();
		return booklendID;
	}
	//生成任务编号
	public String generateTaskId() {

		String taskID = "A" + this.generateRandomId();
		return taskID;
	}
	//生成周报编号
	public String generateReportWeeklyId() {

		String rwID = "W" + this.generateRandomId();
		return rwID;
	}
	//生成月报编号
	public String generateReportMonthId() {

		String rmID = "M" + this.generateRandomId();
		return rmID;
	}


	public String generateRandomId() {

		int intRd = 0;
		String strMonth = null;
		String strYear = null;
		String strRd = null;
		String common_ID = null;

		Random rdm = new Random(System.currentTimeMillis());
		intRd = Math.abs(rdm.nextInt()) % 99999 + 1;
		strRd = String.valueOf(intRd);
		Calendar calendar = Calendar.getInstance();
		switch (strRd.length()) {
		case 1:
			strRd = "0000" + strRd;
			break;
		case 2:
			strRd = "000" + strRd;
			break;
		case 3:
			strRd = "00" + strRd;
			break;
		case 4:
			strRd = "0" + strRd;
			break;
		default:
			break;
		}
		int month = calendar.get(Calendar.MONTH) + 1;
		strMonth = String.valueOf(month);
		if (strMonth.length() < 2) {
			strMonth = "0" + strMonth;
		}
		int year = calendar.get(Calendar.YEAR);
		strYear = String.valueOf(year).substring(2);
		common_ID = strYear + strMonth + strRd;
		return common_ID;
	}

}
