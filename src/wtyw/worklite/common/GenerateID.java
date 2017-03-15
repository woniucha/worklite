package wtyw.worklite.common;

import java.util.*;

public class GenerateID {

	// A - ����
	// B - ͼ����
	// C - 
	// D - �������ñ��
	// E
	// F
	// G
	// H
	// I
	// J
	// K - ֪ʶ���
	// O
	// P
	// Q
	// L - ������
	// M - �±����
	// N
	// R
	// S
	// T - ���Ʊ��
	// U
	// V - ��ٵ����
	// W - �ܱ����
	// X
	// Y
	// Z
	//�����û����
	public String generateUserId() {
		String userID = "U" + this.generateRandomId();
		return userID;
	}
	//�����������ñ��
	public String generateTokenLendId() {
		String tokenID = "D" + this.generateRandomId();
		return tokenID;
	}
	
	//����֪ʶ���
	public String generateKnowledgeId() {

		String knowledgeID = "K" + this.generateRandomId();
		return knowledgeID;
	}
	//������ٵ����
	public String generateVacationId() {

		String vacationID = "V" + this.generateRandomId();
		return vacationID;
	}
	
	//�������Ʊ��
	public String generateTokenId() {

		String tokenID = "T" + this.generateRandomId();
		return tokenID;
	}
	
	//����ͼ����
	public String generateBookId() {

		String bookID = "B" + this.generateRandomId();
		return bookID;
	}

	//���ɽ�����
	public String generateBookLendId() {

		String booklendID = "L" + this.generateRandomId();
		return booklendID;
	}
	//����������
	public String generateTaskId() {

		String taskID = "A" + this.generateRandomId();
		return taskID;
	}
	//�����ܱ����
	public String generateReportWeeklyId() {

		String rwID = "W" + this.generateRandomId();
		return rwID;
	}
	//�����±����
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
