package wtyw.worklite.IDao;

import java.util.List;

import javax.sql.DataSource;

import wtyw.worklite.beans.WorkliteToken;
import wtyw.worklite.beans.WorkliteToken;

public interface IWorklite_TokenDao {
	public void setDatasource(DataSource ds);
	public void addWorklite_token(WorkliteToken worklitetoken);
	
}
