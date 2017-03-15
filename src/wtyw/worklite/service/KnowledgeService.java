package wtyw.worklite.service;

import wtyw.worklite.beans.WorkliteKnowledge;
import wtyw.worklite.beans.WorkliteUserInfo;
import wtyw.worklite.common.GetLoginUserInfo;
import wtyw.worklite.common.GenerateID;
import wtyw.worklite.common.GenerateCurrentDate;
import wtyw.worklite.dao.WorkliteKnowledgeDao;
import wtyw.worklite.util.DetailModel;
import wtyw.worklite.util.PageModelByIndication;

/**
 * 类编号：WORKLITE-K-0201_02-02
 * 类名称：KnowledgeService
 * 内容摘要：知识模块业务逻辑层，包括增加、查询、修改、审核、删除等功能
 * 属性说明：该类有2个属性
 *         1. worklite_knowledgedao 数据操作对象DAO实例
 * 方法说明：该类有5个方法：
 *         01 addWorklite_knowledge 增加一条知识
 *         02 findByPage            分页查询知识
 *         03
 * @author 陈祝军 
 */

public class KnowledgeService {
	
	private WorkliteKnowledge workliteknowledge;
	// 属性区开始
	/**
	 * 知识的数据对象
	 * @see wtyw.worlite.dao.WorkliteKnowledgeDao
	 */
	private WorkliteKnowledgeDao worklite_knowledgedao;
	
    /** 
     * 获取worklite_knowledgedao
     * @return WorkliteKnowledgeDao 返回一个WorkliteKnowledgeDao对象
     */
	public WorkliteKnowledgeDao getWorklite_knowledgedao() {
		return worklite_knowledgedao;
	}

	/**
	 * 设置worklite_knowledgedao
	 * @param worklite_knowledgedao 被设置的属性的WorkliteKnowledgeDao对象
	 */
	public void setWorklite_knowledgedao(WorkliteKnowledgeDao worklite_knowledgedao) {
		this.worklite_knowledgedao = worklite_knowledgedao;
	}
	
	public WorkliteKnowledge getWorkliteknowledge() {
		return workliteknowledge;
	}

	public void setWorkliteknowledge(WorkliteKnowledge workliteknowledge) {
		this.workliteknowledge = workliteknowledge;
	}
	//属性区结束

	//方法区开始
    /**
     * 方法编号： 01
     * 方法名称： saveWorklite_knowledge
     * 内容摘要： 将编辑中知识保存为草稿。
     *         1）如果是从创建功能时选择存为草稿，则插入知识表和待办事项表
     *         2）如果是从编辑功能时选择存为草稿，此时是有kl_id的，而且在待办事项表里有记录，故只是Update两个表
     * @param workliteknowledge 知识对象
     * @return 程序直接跳转返回，无值
     * ＠throws Exception；
     */
	public void saveWorklite_knowledge(WorkliteKnowledge workliteknowledge) throws Exception {
		try
		{
			String kl_id = workliteknowledge.getKl_id();
			if(kl_id == null||("").equals(kl_id))
			{
				workliteknowledge.setKl_id(new GenerateID().generateKnowledgeId());
			    workliteknowledge.setKl_status("编辑中");
			    workliteknowledge.setKl_commit_time(new GenerateCurrentDate().getCurrentDate());  
			    worklite_knowledgedao.saveNew_Worklite_knowledge(workliteknowledge);
	            return;   //保存草稿知识成功，程序返回
			}else
			{
				workliteknowledge.setKl_status("编辑中");
				workliteknowledge.setKl_commit_time(new GenerateCurrentDate().getCurrentDate());  
				worklite_knowledgedao.saveExist_Worklite_knowledge(workliteknowledge);
	            return;   //保存草稿知识成功，程序返回
			}

		} 
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	
    /**
     * 方法编号： 02
     * 方法名称： addWorklite_knowledge
     * 内容摘要： 提交一条知识审核。步骤如下：
     *         1）如果是从创建功能时提交审核，则插入知识表和待办事项表
     *         2）如果是从编辑功能时提交审核，此时是有kl_id的，而且在待办事项表里有记录，故只是Update两个表
     * @param workliteknowledge 知识对象
     * @return 程序直接跳转返回，无值
     * ＠throws Exception；
     */
	
	public void addWorklite_knowledge(WorkliteKnowledge workliteknowledge) throws Exception {
		try
		{
			String kl_id = workliteknowledge.getKl_id();
			if(kl_id == null||("").equals(kl_id))
			{
				kl_id = (String)new GenerateID().generateKnowledgeId();		
		        workliteknowledge.setKl_id(kl_id);
			    workliteknowledge.setKl_commit_time(new GenerateCurrentDate().getCurrentDate());	  
		        workliteknowledge.setKl_status("审核中");
		        workliteknowledge.setKl_check_frequency("0");
		        worklite_knowledgedao.addNew_Worklite_knowledge(workliteknowledge);
                return;   //增加知识成功，程序返回
			}else
			{
			    workliteknowledge.setKl_commit_time(new GenerateCurrentDate().getCurrentDate());   
			    workliteknowledge.setKl_status("审核中");
			    workliteknowledge.setKl_check_frequency("0");
			    worklite_knowledgedao.addExist_Worklite_knowledge(workliteknowledge);
	            return;   //增加知识成功，程序返回
			}
		} 
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	//审核通过后，发布知识
	public void issueWorklite_knowledge(WorkliteKnowledge workliteknowledge) throws Exception {
		try
		{
		        workliteknowledge.setKl_commit_time(new GenerateCurrentDate().getCurrentDate());
		        workliteknowledge.setKl_status("已发布");
		        int temp_frequency = Integer.parseInt(workliteknowledge.getKl_check_frequency());
		        temp_frequency++;
		        String check_frequency = String.valueOf(temp_frequency);
		        workliteknowledge.setKl_check_frequency(check_frequency);	        
		        worklite_knowledgedao.issue_Worklite_knowledge(workliteknowledge);
                return;   //发布知识成功，程序返回
		} catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	//审核不通过退回知识
	public void rollbackWorklite_knowledge(WorkliteKnowledge workliteknowledge) throws Exception {
		try
		{
		        workliteknowledge.setKl_status("编辑中");
		        int temp_frequency = Integer.parseInt(workliteknowledge.getKl_check_frequency());
		        temp_frequency++;
		        String check_frequency = String.valueOf(temp_frequency);
		        workliteknowledge.setKl_check_frequency(check_frequency);	        
		        worklite_knowledgedao.rollback_Worklite_knowledge(workliteknowledge);
                return;   //退回知识成功，程序返回
		} catch(Exception e)
		{
			e.printStackTrace();
		}
	}	
	
	// 根据ID查询明细，并对不同用户展示不同处理界面
	public DetailModel queryKnowledgeDetail(String kw_id, String loginUser_name) {
		workliteknowledge = worklite_knowledgedao.queryKnowledgeDetail(kw_id);
		DetailModel dm = new DetailModel();
		dm.setWorkliteKnowledge(workliteknowledge);
		if (workliteknowledge.getKl_status().equals("编辑中"))
		{
			if (workliteknowledge.getKl_commit_person().equals(loginUser_name))
			{
				dm.setMatchFlag("editDetail");
				return dm;
			}else
			{
				dm.setMatchFlag("queryDetail");
				return dm;
			}
		}else if(workliteknowledge.getKl_status().equals("审核中"))
		{
			
			if (workliteknowledge.getKl_check_person().equals(loginUser_name))
			{
				dm.setMatchFlag("checkDetail");
				return dm;
			}else
			{
				dm.setMatchFlag("queryDetail");
				return dm;
			}	
		}else
		{
			dm.setMatchFlag("queryDetail");
			return dm;
		}
	}
	
	
    /**
     * 方法编号： 04
     * 方法名称： findByPage
     * 内容摘要： ＜列出主要功能、调用说明、异常说明、业务逻辑等＞ 分页查询知识，返回PageModel对象
     * @param pageNo     当前页
     * @param pageSize   每页显示记录数
     * @return PageModel 返回PageModel对象
     * ＠throws Exception；
     */
	public PageModelByIndication findByPage(int pageNo,int pageSize,WorkliteKnowledge workliteknowledge,
			String begin_date, String end_date) {
		if(workliteknowledge.getKl_id().equals("")){
			workliteknowledge.setKl_id("%%");
        }
		if(workliteknowledge.getKl_system().equals("")){
			workliteknowledge.setKl_system("%%");
        }
		if(workliteknowledge.getKl_commit_person().equals("")){
			workliteknowledge.setKl_commit_person("%%");
        }
		if(workliteknowledge.getKl_status().equals("")){
			workliteknowledge.setKl_status("%%");
        }
		if(begin_date.equals("")){
			begin_date = "0000-00-00";
        }
		if(end_date.equals("")){
			end_date = "9999-99-99";
        }
        return worklite_knowledgedao.findByPage(pageNo, pageSize, workliteknowledge, begin_date, end_date);
	}
	
	
	//public PageModel findByPage(int pageNo,int pageSize) {
		
    //    return worklite_knowledgedao.findByPage(pageNo, pageSize);
        
	//}
    //方法区结束


}
