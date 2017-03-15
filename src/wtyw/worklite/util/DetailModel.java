package wtyw.worklite.util;

import java.util.List;
import wtyw.worklite.beans.WorkliteKnowledge;
import wtyw.worklite.beans.WorkliteVacation;
import wtyw.worklite.beans.WorkliteTask;
import wtyw.worklite.beans.WorkliteTaskHandler;
import wtyw.worklite.beans.WorkliteTaskEnclosure;
import wtyw.worklite.beans.WorkliteEstimateDetail;

public class DetailModel {

	// 声明知识明细对象
	private WorkliteKnowledge workliteKnowledge;
	// 声明请假明细对象
	private WorkliteVacation workliteVacation;
	//声明任务、任务处理人、任务附件List
	private WorkliteTask worklitetask;
	private WorkliteTaskHandler worklitetaskhandler;
	private List<WorkliteTaskEnclosure> worklitetaskenclosures;
	//任务评价
	private List<WorkliteEstimateDetail> estimate;
	//声明匹配标志
	private String matchFlag;
	
	public WorkliteKnowledge getWorkliteKnowledge() {
		return workliteKnowledge;
	}
	public void setWorkliteKnowledge(WorkliteKnowledge workliteKnowledge) {
		this.workliteKnowledge = workliteKnowledge;
	}
	
	public WorkliteTask getWorklitetask() {
		return worklitetask;
	}
	public void setWorklitetask(WorkliteTask worklitetask) {
		this.worklitetask = worklitetask;
	}
	
	public WorkliteTaskHandler getWorklitetaskhandler() {
		return worklitetaskhandler;
	}
	public void setWorklitetaskhandler(WorkliteTaskHandler worklitetaskhandler) {
		this.worklitetaskhandler = worklitetaskhandler;
	}

	public List<WorkliteTaskEnclosure> getWorklitetaskenclosures() {
		return worklitetaskenclosures;
	}
	public void setWorklitetaskenclosures(
			List<WorkliteTaskEnclosure> worklitetaskenclosures) {
		this.worklitetaskenclosures = worklitetaskenclosures;
	}
	public String getMatchFlag() {
		return matchFlag;
	}
	public void setMatchFlag(String matchFlag) {
		this.matchFlag = matchFlag;
	}
	public List<WorkliteEstimateDetail> getEstimate() {
		return estimate;
	}
	public void setEstimate(List<WorkliteEstimateDetail> estimate) {
		this.estimate = estimate;
	}
	public WorkliteVacation getWorkliteVacation() {
		return workliteVacation;
	}
	public void setWorkliteVacation(WorkliteVacation workliteVacation) {
		this.workliteVacation = workliteVacation;
	}
}
