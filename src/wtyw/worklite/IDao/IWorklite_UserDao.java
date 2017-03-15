package wtyw.worklite.IDao;

import java.util.List;

import javax.sql.DataSource;

import wtyw.worklite.beans.Worklit_User;

public interface IWorklite_UserDao {
	public void setDatasource(DataSource ds);
	/**
	 * 姓名查询
	 * @param user_name
	 * @return
	 */
	public Worklit_User login(String user_name);
/**
 * 添加用户
 * @param worklite_users
 */
	public void addWorklite_users(Worklit_User worklite_user); 
	/**
	 * 按id删除
	 * @param worklite_users
	 */

	public void delWorklite_usersID(int user_id); 
	/**
	 *按姓名删除
	 * @param worklite_users
	 */

	public void delWorklite_usersbyname(String user_name); 
	/**
	 *删除所有
	 * @param worklite_users
	 */

	public void delallWorklite_users(); 
	/**
	 * 跟新对象
	 * @param worklite_users
	 */

	public void updWorklite_users(Worklit_User worklite_users); 
	/**
	 * 查询所有
	 * @param worklite_users
	 */

	public List<Worklit_User> allWorklite_users(); 
	/**
	 * 按id查询
	 * @param worklite_users
	 */

	public List<Worklit_User> queryWorklite_usersbyID(int user_id); 
	/**
	 * 按姓名查询
	 * @param worklite_users
	 */

	public List<Worklit_User> queryWorklite_usersbyname(String user_name); 
	/**
	 * 添加用户
	 * @param worklite_users
	 */


}
