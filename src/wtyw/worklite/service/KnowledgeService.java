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
 * ���ţ�WORKLITE-K-0201_02-02
 * �����ƣ�KnowledgeService
 * ����ժҪ��֪ʶģ��ҵ���߼��㣬�������ӡ���ѯ���޸ġ���ˡ�ɾ���ȹ���
 * ����˵����������2������
 *         1. worklite_knowledgedao ���ݲ�������DAOʵ��
 * ����˵����������5��������
 *         01 addWorklite_knowledge ����һ��֪ʶ
 *         02 findByPage            ��ҳ��ѯ֪ʶ
 *         03
 * @author ��ף�� 
 */

public class KnowledgeService {
	
	private WorkliteKnowledge workliteknowledge;
	// ��������ʼ
	/**
	 * ֪ʶ�����ݶ���
	 * @see wtyw.worlite.dao.WorkliteKnowledgeDao
	 */
	private WorkliteKnowledgeDao worklite_knowledgedao;
	
    /** 
     * ��ȡworklite_knowledgedao
     * @return WorkliteKnowledgeDao ����һ��WorkliteKnowledgeDao����
     */
	public WorkliteKnowledgeDao getWorklite_knowledgedao() {
		return worklite_knowledgedao;
	}

	/**
	 * ����worklite_knowledgedao
	 * @param worklite_knowledgedao �����õ����Ե�WorkliteKnowledgeDao����
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
	//����������

	//��������ʼ
    /**
     * ������ţ� 01
     * �������ƣ� saveWorklite_knowledge
     * ����ժҪ�� ���༭��֪ʶ����Ϊ�ݸ塣
     *         1������ǴӴ�������ʱѡ���Ϊ�ݸ壬�����֪ʶ��ʹ��������
     *         2������Ǵӱ༭����ʱѡ���Ϊ�ݸ壬��ʱ����kl_id�ģ������ڴ�����������м�¼����ֻ��Update������
     * @param workliteknowledge ֪ʶ����
     * @return ����ֱ����ת���أ���ֵ
     * ��throws Exception��
     */
	public void saveWorklite_knowledge(WorkliteKnowledge workliteknowledge) throws Exception {
		try
		{
			String kl_id = workliteknowledge.getKl_id();
			if(kl_id == null||("").equals(kl_id))
			{
				workliteknowledge.setKl_id(new GenerateID().generateKnowledgeId());
			    workliteknowledge.setKl_status("�༭��");
			    workliteknowledge.setKl_commit_time(new GenerateCurrentDate().getCurrentDate());  
			    worklite_knowledgedao.saveNew_Worklite_knowledge(workliteknowledge);
	            return;   //����ݸ�֪ʶ�ɹ������򷵻�
			}else
			{
				workliteknowledge.setKl_status("�༭��");
				workliteknowledge.setKl_commit_time(new GenerateCurrentDate().getCurrentDate());  
				worklite_knowledgedao.saveExist_Worklite_knowledge(workliteknowledge);
	            return;   //����ݸ�֪ʶ�ɹ������򷵻�
			}

		} 
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	
    /**
     * ������ţ� 02
     * �������ƣ� addWorklite_knowledge
     * ����ժҪ�� �ύһ��֪ʶ��ˡ��������£�
     *         1������ǴӴ�������ʱ�ύ��ˣ������֪ʶ��ʹ��������
     *         2������Ǵӱ༭����ʱ�ύ��ˣ���ʱ����kl_id�ģ������ڴ�����������м�¼����ֻ��Update������
     * @param workliteknowledge ֪ʶ����
     * @return ����ֱ����ת���أ���ֵ
     * ��throws Exception��
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
		        workliteknowledge.setKl_status("�����");
		        workliteknowledge.setKl_check_frequency("0");
		        worklite_knowledgedao.addNew_Worklite_knowledge(workliteknowledge);
                return;   //����֪ʶ�ɹ������򷵻�
			}else
			{
			    workliteknowledge.setKl_commit_time(new GenerateCurrentDate().getCurrentDate());   
			    workliteknowledge.setKl_status("�����");
			    workliteknowledge.setKl_check_frequency("0");
			    worklite_knowledgedao.addExist_Worklite_knowledge(workliteknowledge);
	            return;   //����֪ʶ�ɹ������򷵻�
			}
		} 
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	//���ͨ���󣬷���֪ʶ
	public void issueWorklite_knowledge(WorkliteKnowledge workliteknowledge) throws Exception {
		try
		{
		        workliteknowledge.setKl_commit_time(new GenerateCurrentDate().getCurrentDate());
		        workliteknowledge.setKl_status("�ѷ���");
		        int temp_frequency = Integer.parseInt(workliteknowledge.getKl_check_frequency());
		        temp_frequency++;
		        String check_frequency = String.valueOf(temp_frequency);
		        workliteknowledge.setKl_check_frequency(check_frequency);	        
		        worklite_knowledgedao.issue_Worklite_knowledge(workliteknowledge);
                return;   //����֪ʶ�ɹ������򷵻�
		} catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	//��˲�ͨ���˻�֪ʶ
	public void rollbackWorklite_knowledge(WorkliteKnowledge workliteknowledge) throws Exception {
		try
		{
		        workliteknowledge.setKl_status("�༭��");
		        int temp_frequency = Integer.parseInt(workliteknowledge.getKl_check_frequency());
		        temp_frequency++;
		        String check_frequency = String.valueOf(temp_frequency);
		        workliteknowledge.setKl_check_frequency(check_frequency);	        
		        worklite_knowledgedao.rollback_Worklite_knowledge(workliteknowledge);
                return;   //�˻�֪ʶ�ɹ������򷵻�
		} catch(Exception e)
		{
			e.printStackTrace();
		}
	}	
	
	// ����ID��ѯ��ϸ�����Բ�ͬ�û�չʾ��ͬ�������
	public DetailModel queryKnowledgeDetail(String kw_id, String loginUser_name) {
		workliteknowledge = worklite_knowledgedao.queryKnowledgeDetail(kw_id);
		DetailModel dm = new DetailModel();
		dm.setWorkliteKnowledge(workliteknowledge);
		if (workliteknowledge.getKl_status().equals("�༭��"))
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
		}else if(workliteknowledge.getKl_status().equals("�����"))
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
     * ������ţ� 04
     * �������ƣ� findByPage
     * ����ժҪ�� ���г���Ҫ���ܡ�����˵�����쳣˵����ҵ���߼��ȣ� ��ҳ��ѯ֪ʶ������PageModel����
     * @param pageNo     ��ǰҳ
     * @param pageSize   ÿҳ��ʾ��¼��
     * @return PageModel ����PageModel����
     * ��throws Exception��
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
    //����������


}
