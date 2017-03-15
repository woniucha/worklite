package wtyw.worklite.service;

import wtyw.worklite.beans.WorkliteVacation;
import wtyw.worklite.dao.WorkliteVacationDao;
import wtyw.worklite.common.GenerateCurrentDate;
import wtyw.worklite.common.GenerateID;
import wtyw.worklite.util.PageModel;
import wtyw.worklite.util.DetailModel;
import wtyw.worklite.util.PageModelByIndication;
public class VacationService {
	
	private WorkliteVacation worklitevacation;
	private WorkliteVacationDao worklite_vacationdao;
	
	//�ύ��ٵ�
	public void applyWorklite_vacation(WorkliteVacation worklitevacation){
		try
		{
				worklitevacation.setVacation_id(new GenerateID().generateVacationId());
				worklitevacation.setVacation_title(worklitevacation.getVacation_person()+"�������");
			    worklitevacation.setVacation_status("��˾���");
			    worklitevacation.setVacation_commitdate(new GenerateCurrentDate().getCurrentDate());  
			    worklite_vacationdao.applyWorklite_vacation(worklitevacation);
	            return; 
		} 
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	//��˾���
	public void verifyVacationByCorp(WorkliteVacation worklitevacation, String verifyResult){
		if(verifyResult.equals("pass")){
		worklitevacation.setVacation_corpdate(new GenerateCurrentDate().getCurrentDate());
		worklitevacation.setVacation_status("�з����");
		worklite_vacationdao.verifyVacationByCorp(worklitevacation, verifyResult);
		return;
		}else
		{		
	    worklitevacation.setVacation_corpdate(new GenerateCurrentDate().getCurrentDate());
		worklitevacation.setVacation_status("��˾��˲�ͨ��");
		worklite_vacationdao.verifyVacationByCorp(worklitevacation, verifyResult);
		return;	
		}
	}
	//�з����
	public void verifyVacationByBank(WorkliteVacation worklitevacation, String verifyResult){
		if(verifyResult.equals("pass")){
			worklitevacation.setVacation_bankdate(new GenerateCurrentDate().getCurrentDate());
			worklitevacation.setVacation_status("���ͨ��");
			worklite_vacationdao.verifyVacationByBank(worklitevacation, verifyResult);
			return;
		}else
		{		
		    worklitevacation.setVacation_bankdate(new GenerateCurrentDate().getCurrentDate());
			worklitevacation.setVacation_status("�з���˲�ͨ��");
			worklite_vacationdao.verifyVacationByBank(worklitevacation, verifyResult);
			return;	
		}
	}
	//������ٵ���Ų�ѯ��ٵ���ϸ,չʾ��ͬҳ��
	public DetailModel queryVacationDetail(String vacation_id, String user_name) throws Exception {
		worklitevacation = worklite_vacationdao.queryVacationDetail(vacation_id);
		DetailModel dm = new DetailModel();
		dm.setWorkliteVacation(worklitevacation);
		if (worklitevacation.getVacation_status().equals("��˾���"))
		{
			if (worklitevacation.getVacation_corporation_verify().equals(user_name))
			{
				dm.setMatchFlag("copporation_verify");
				return dm;
			}else
			{
				dm.setMatchFlag("queryDetail");
				return dm;
			}
		}else if(worklitevacation.getVacation_status().equals("�з����"))
		{
			
			if (worklitevacation.getVacation_bank_verify().equals(user_name))
			{
				dm.setMatchFlag("bank_verify");
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
	//��ҳ��ѯ�������
//	public PageModel findByPage(int pageNo,int pageSize) {
//		
//        return worklite_vacationdao.findByPage(pageNo, pageSize);
//        
//	}
	//��������ҳ��ѯ
	public PageModelByIndication findvacationByPage(int pageNo,int pageSize,WorkliteVacation worklitevacation) {
		if (worklitevacation.getVacation_id().equals("")) {
			worklitevacation.setVacation_id("%%");
		}
		if (worklitevacation.getVacation_person().equals("")) {
			worklitevacation.setVacation_person("%%");
		}
		if (worklitevacation.getVacation_corporation().equals("")) {
			worklitevacation.setVacation_corporation("%%");
		}
		if (worklitevacation.getVacation_startdate().equals("")) {
			worklitevacation.setVacation_startdate("0000-00-00");
		}
		if (worklitevacation.getVacation_enddate().equals("")) {
			worklitevacation.setVacation_enddate("9999-99-99");
		}
		if (worklitevacation.getVacation_status().equals("")) {
			worklitevacation.setVacation_status("%%");
		}
		
        return worklite_vacationdao.findvacationByPage(pageNo, pageSize,worklitevacation);
        
	}

	public WorkliteVacation getWorklitevacation() {
		return worklitevacation;
	}

	public void setWorklitevacation(WorkliteVacation worklitevacation) {
		this.worklitevacation = worklitevacation;
	}

	public WorkliteVacationDao getWorklite_vacationdao() {
		return worklite_vacationdao;
	}

	public void setWorklite_vacationdao(WorkliteVacationDao worklite_vacationdao) {
		this.worklite_vacationdao = worklite_vacationdao;
	}
	
}
