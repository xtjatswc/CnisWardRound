package cn.kancare.mobile.core.log;

import java.sql.SQLException;
import java.util.List;

import com.j256.ormlite.stmt.QueryBuilder;

import android.content.Context;
import cn.kancare.mobile.bean.CourseRecord;
import cn.kancare.mobile.core.base.BaseDao;

public class CnisLogDao extends BaseDao<CnisLog> {

	public CnisLogDao(Context context) throws SQLException {
		super(context);
	}

	@Override
	protected String getPrimaryKey() {
		return "ID";
	}
	
	/**
	 * 查询记录
	 * 
	 * @param patient
	 */
	public List<CnisLog> query(int limit, int offset) throws Exception {

		QueryBuilder<CnisLog, Integer> qBuilder = dao.queryBuilder();
		qBuilder.limit(limit).offset(offset)
				.orderBy("ID", false);
		return qBuilder.query();

	}// ...other operations
	


}