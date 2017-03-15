package wtyw.worklite.IDao;

import java.util.List;

import javax.sql.DataSource;

import wtyw.worklite.beans.Worklit_User;

public interface IWorklite_UserDao {
	public void setDatasource(DataSource ds);
	/**
	 * ������ѯ
	 * @param user_name
	 * @return
	 */
	public Worklit_User login(String user_name);
/**
 * ����û�
 * @param worklite_users
 */
	public void addWorklite_users(Worklit_User worklite_user); 
	/**
	 * ��idɾ��
	 * @param worklite_users
	 */

	public void delWorklite_usersID(int user_id); 
	/**
	 *������ɾ��
	 * @param worklite_users
	 */

	public void delWorklite_usersbyname(String user_name); 
	/**
	 *ɾ������
	 * @param worklite_users
	 */

	public void delallWorklite_users(); 
	/**
	 * ���¶���
	 * @param worklite_users
	 */

	public void updWorklite_users(Worklit_User worklite_users); 
	/**
	 * ��ѯ����
	 * @param worklite_users
	 */

	public List<Worklit_User> allWorklite_users(); 
	/**
	 * ��id��ѯ
	 * @param worklite_users
	 */

	public List<Worklit_User> queryWorklite_usersbyID(int user_id); 
	/**
	 * ��������ѯ
	 * @param worklite_users
	 */

	public List<Worklit_User> queryWorklite_usersbyname(String user_name); 
	/**
	 * ����û�
	 * @param worklite_users
	 */


}
