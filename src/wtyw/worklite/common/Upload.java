package wtyw.worklite.common;

import java.io.*;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import wtyw.worklite.action.BaseAction;
import wtyw.worklite.beans.WorkliteCheckDetailPersonal;
import wtyw.worklite.dao.WorkliteCheckDao;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.struts2.ServletActionContext;


public class Upload {	

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private WorkliteCheckDao workliteCheckDao;

	public void doUpload(List<File> file, List<String> fileFileName) throws Exception {
//		String userid=(String)this.session.get("userid");
//		System.out.println(userid);
		HttpServletRequest request =ServletActionContext.getRequest();
		String userid=(String)request.getSession().getAttribute("userid");


	
		for (int i = 0; i < file.size(); i++) {
			InputStream is = new FileInputStream(file.get(i));
			File f = new File("D:/upload/"+userid+"/", fileFileName.get(i));
			OutputStream os = new FileOutputStream(f);
			byte[] buffer = new byte[10000];
			int length = 0;
			while ((length = is.read(buffer)) > 0) {
				os.write(buffer, 0, length);
			}
			is.close();
			os.close();
	    }
	}
	
	//周报上传
	public void doUploadWeekly(List<File> file, List<String> fileFileName) throws Exception {
		for (int i = 0; i < file.size(); i++) {
			InputStream is = new FileInputStream(file.get(i));
			File f = new File("D:/upload/weekly/", fileFileName.get(i));
			OutputStream os = new FileOutputStream(f);
			byte[] buffer = new byte[100000000];
			int length = 0;
			while ((length = is.read(buffer)) > 0) {
				os.write(buffer, 0, length);
			}
			is.close();
			os.close();
	    }
	}
	
	//月报上传
	public void doUploadMonth(List<File> file, List<String> fileFileName) throws Exception {
		for (int i = 0; i < file.size(); i++) {
			InputStream is = new FileInputStream(file.get(i));
			File f = new File("D:/upload/month/", fileFileName.get(i));
			OutputStream os = new FileOutputStream(f);
			byte[] buffer = new byte[100000000];
			int length = 0;
			while ((length = is.read(buffer)) > 0) {
				os.write(buffer, 0, length);
			}
			is.close();
			os.close();
	    }
	}
	
	
	//导入考勤信息统计表(个人)
	public void importCheckDetailPersonal(List<File> file, List<String> fileFileName) throws Exception {
		
		HttpServletRequest request =ServletActionContext.getRequest();
		String userid=(String)request.getSession().getAttribute("userid");
		for (int n = 0; n < file.size(); n++) {
			InputStream is = new FileInputStream(file.get(n));
			File f = new File("D:/upload/check/", fileFileName.get(n));
			OutputStream os = new FileOutputStream(f);
			byte[] buffer = new byte[400];
			int length = 0;
			while ((length = is.read(buffer)) > 0) {
				os.write(buffer, 0, length);
			}
			is.close();
			os.close();
			//至此，文件上传成功
			//以下为上传表格后，将表格直接导入数据库
			try {
				//获得服务器存放Excel路径
				String filepath = "D:/upload/check/" + fileFileName.get(n);
				// 创建对Excel工作簿文件的引用
				HSSFWorkbook wookbook = new HSSFWorkbook(new FileInputStream(
						filepath));
				// 在Excel文档中，第一张工作表的缺省索引是0
				// 其语句为：HSSFSheet sheet = workbook.getSheetAt(0);
				HSSFSheet sheet = wookbook.getSheetAt(0);
				//HSSFSheet sheet = wookbook.getSheet("Sheet1");通过指定Sheet名指定
				// 获取到Excel文件中的所有行数
				int rows = sheet.getPhysicalNumberOfRows();
				rows++;
				// 遍历行从第9行开始取值，第8行为标题头
				for (int i = 8; i <= rows; i++) {
					// 读取左上端单元格
					HSSFRow row = sheet.getRow(i);
					// 行不为空
					if (row != null) {
						// 获取到Excel文件中的所有的列
						int cells = row.getPhysicalNumberOfCells();
						String value = "";
						// 遍历列
						for (int j = 1; j < cells; j++) {
							// 获取到列的值
							HSSFCell cell = row.getCell(j);
							if (cell != null) {
								switch (cell.getCellType()) {
								case HSSFCell.CELL_TYPE_FORMULA:
									break;
								case HSSFCell.CELL_TYPE_NUMERIC:
									value += cell.getNumericCellValue() + ",";
									break;
								case HSSFCell.CELL_TYPE_STRING:
									value += cell.getStringCellValue() + ",";
									break;
								default:
									value += "0";
									break;
								}
							}
						}
						// 将数据插入到数据库中				
						String[] val = value.split(",");
						WorkliteCheckDetailPersonal checkDetailPersonal = new WorkliteCheckDetailPersonal();
						checkDetailPersonal.setCheck_project_institution(val[0]);
						checkDetailPersonal.setCheck_project(val[1]);
						checkDetailPersonal.setCheck_name(val[2]);
						checkDetailPersonal.setCheck_identification(val[3]);
						checkDetailPersonal.setCheck_owner_institution(val[4]);
						checkDetailPersonal.setCheck_date(val[5]);
						checkDetailPersonal.setCheck_type(val[6]);
						checkDetailPersonal.setCheck_begin_time(val[7]);
						checkDetailPersonal.setCheck_end_time(val[8]);
						checkDetailPersonal.setCheck_classes(val[9]);
						checkDetailPersonal.setCheck_personal_date(val[10]);
						workliteCheckDao.addCheckDetailPersonal(checkDetailPersonal);
					}
				}
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	public WorkliteCheckDao getWorkliteCheckDao() {
		return workliteCheckDao;
	}

	public void setWorkliteCheckDao(WorkliteCheckDao workliteCheckDao) {
		this.workliteCheckDao = workliteCheckDao;
	}
	

}