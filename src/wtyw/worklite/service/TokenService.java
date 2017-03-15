package wtyw.worklite.service;

import wtyw.worklite.common.GenerateID;
import wtyw.worklite.beans.WorkliteToken;
import wtyw.worklite.beans.WorkliteTokenLend;
import wtyw.worklite.dao.*;
import wtyw.worklite.util.PageModelByIndication;

public class TokenService {

    private	WorkliteTokenDao workliteTokenDao;
	private WorkliteTokenLend worklitetokenlend;

	// 添加令牌，入参worklitetoken实体类，成功返回success，失败返回fail
	public String addWorkliteToken(WorkliteToken worklitetoken) {
		String result = "fail";
		try {
			if (!"".equals(worklitetoken.getToken_id())
					&& worklitetoken.getToken_id() != null
					&& !"null".equals(worklitetoken.getToken_id())) {
				this.workliteTokenDao.addWorklite_token(worklitetoken);
				result = "success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	};


	// 根据令牌序列号查询令牌的相关信息，入参令牌序列号，返回worklitetoken实体类或者null
	public WorkliteToken queryWorklitetoken(String tokenid) {
		WorkliteToken worklitetoken = null;
		try {
			if (!"".equals(tokenid) && tokenid != null
					&& !"null".equals(tokenid)) {
				worklitetoken = this.workliteTokenDao
						.queryWorklitetoken(tokenid);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return worklitetoken;
	};

	// 注销令牌
	public String annulworklitetoken(String tokenid) {
		String result = null;
		try{
		    if (!"".equals(tokenid) && tokenid != null && !"null".equals(tokenid)) {
		        WorkliteToken worklitetoken  = this.workliteTokenDao.queryWorklitetoken(tokenid);
		        if (worklitetoken.getToken_status().equals("已领用")){
			        result = "have_lend";
		        }else if (worklitetoken.getToken_status().equals("已注销"))
		        {
		        	result = "have_annul";
		        }
		        else
		        {
				this.workliteTokenDao.annulworklitetoken(tokenid);
				result = "annul_success";
			    }
		     }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 修改令牌信息,入参worklitetoken，成功返回success，失败返回fail
	public String updateWorklitetoken(WorkliteToken worklitetoken) {
		String result = "fail";
		try {
			if (!"".equals(worklitetoken.getToken_id())
					&& worklitetoken.getToken_id() != null
					&& !"null".equals(worklitetoken.getToken_id())) {
				System.out.println(worklitetoken.getToken_uass_name()+"S");
				System.out.println(worklitetoken.getToken_location()+"locS");
				System.out.println(worklitetoken.getToken_owner()+"ownS");
				System.out.println(worklitetoken.getToken_status()+"STUS");
				worklitetoken.setToken_uass_name(worklitetoken.getToken_uass_name().trim());
				System.out.println(worklitetoken.getToken_uass_name()+"S2");
				this.workliteTokenDao.updateWorklitetoken(worklitetoken);
				result = "success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//查询令牌信息是否为已领用，成功返回success，失败返回fail
	public String querytokenstatus(String tokenid){
		String result = "fail";
		WorkliteToken worklitetoken  = this.workliteTokenDao.queryWorklitetoken(tokenid);
		if (worklitetoken.getToken_status().equals("已领用")){
			result = "success";
		}
		return result;
	}
	
	// 领用令牌
	public String lendToken(String tokenid,WorkliteTokenLend worklitetokenlend) {
		GenerateID generateid = new GenerateID();
	    String lend_id = generateid.generateTokenLendId();
		workliteTokenDao.lendWorkliteToken(tokenid,
	    		        worklitetokenlend.getUser_name(), 
						worklitetokenlend.getUse_time(), 
						worklitetokenlend.getFfang_name(),
						lend_id);
		return "lend_success";
	}
	
	// 根据令牌序列号查询令牌使用记录的相关信息，入参令牌序列号，返回worklitetokenhis实体类或者null
	public WorkliteTokenLend queryWorkliteTokenLend(String tokenid) {
		WorkliteTokenLend worklitetokenlend = null;
		try {
			if (!"".equals(tokenid) && tokenid != null
					&& !"null".equals(tokenid)) {
				worklitetokenlend = this.workliteTokenDao.queryTokenLend(tokenid);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return worklitetokenlend;
	}

	
	// 归还令牌
	public String backToken(WorkliteTokenLend worklitetokenlend) {
			this.workliteTokenDao.backToken(worklitetokenlend.getToken_id(), 
					    worklitetokenlend.getBacker_name(),
						worklitetokenlend.getBack_time(), 
						worklitetokenlend.getRk_name());
		    return "return_success";
	}
	
	//按条件分页查询
	public PageModelByIndication findByPage(int pageNo,int pageSize, WorkliteToken worklitetoken) {		
		if(worklitetoken.getToken_id().equals("")){
			worklitetoken.setToken_id("%%");
        }//else
        //{
        //	worklitetoken.setToken_id("%"+worklitetoken.getToken_id()+"%");
        //}
		if(worklitetoken.getToken_uass_name().equals("")){
			worklitetoken.setToken_uass_name("%%");
        }
		//else
        //{
        //	worklitetoken.setToken_uass_name("%"+worklitetoken.getToken_uass_name()+"%");
        //}
		if(worklitetoken.getToken_location().equals("")){
			worklitetoken.setToken_location("%%");
        }
		//else
        //{
        //	worklitetoken.setToken_location("%"+worklitetoken.getToken_location()+"%");
        //}
		if(worklitetoken.getToken_owner().equals("")){
			worklitetoken.setToken_owner("%%");
        }
		//else
        //{
        //	worklitetoken.setToken_owner("%"+worklitetoken.getToken_owner()+"%");
        //}
		if(worklitetoken.getToken_office().equals("")){
			worklitetoken.setToken_office("%%");
        }//else
        //{
        //	worklitetoken.setToken_office("%"+worklitetoken.getToken_office()+"%");
        //}
		if(worklitetoken.getToken_status().equals("")){
			worklitetoken.setToken_status("%%");
        }
		//else
        //{
        //	worklitetoken.setToken_status("%"+worklitetoken.getToken_status()+"%");
        //}
		if(worklitetoken.getToken_root().equals("")){
			worklitetoken.setToken_root("%%");
        }
		//else
        //{
        //	worklitetoken.setToken_root("%"+worklitetoken.getToken_root()+"%");
        //}
        return workliteTokenDao.findByPage(pageNo, pageSize, worklitetoken);   
        
	}
	
	
	public WorkliteTokenDao getWorkliteTokenDao() {
		return workliteTokenDao;
	}


	public void setWorkliteTokenDao(WorkliteTokenDao workliteTokenDao) {
		this.workliteTokenDao = workliteTokenDao;
	}
	

	public WorkliteTokenLend getWorklitetokenlend() {
		return worklitetokenlend;
	}


	public void setWorklitetokenlend(WorkliteTokenLend worklitetokenlend) {
		this.worklitetokenlend = worklitetokenlend;
	}

}
