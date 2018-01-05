package cn.kancare.mobile.common.db;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import cn.kancare.mobile.bean.BodyAnalysisReport;
import cn.kancare.mobile.bean.CourseRecord;
import cn.kancare.mobile.bean.advice.NutrientAdvice;
import cn.kancare.mobile.bean.advice.NutrientAdviceDetail;
import cn.kancare.mobile.bean.advice.NutrientAdviceSummary;
import cn.kancare.mobile.bean.basic.BedNumber;
import cn.kancare.mobile.bean.basic.ChinaFoodComposition;
import cn.kancare.mobile.bean.basic.Department;
import cn.kancare.mobile.bean.basic.Setting;
import cn.kancare.mobile.bean.basic.SysCode;
import cn.kancare.mobile.bean.basic.User;
import cn.kancare.mobile.bean.laboratoryindex.LaboratoryIndex;
import cn.kancare.mobile.bean.laboratoryindex.SearchPageConfig;
import cn.kancare.mobile.bean.laboratoryindex.TestItemDetail;
import cn.kancare.mobile.bean.laboratoryindex.TestResult;
import cn.kancare.mobile.bean.mealrecord.MealRecord;
import cn.kancare.mobile.bean.mealrecord.RelationOfDietaryFood;
import cn.kancare.mobile.bean.patient.PatientFavorite;
import cn.kancare.mobile.bean.patient.PatientHospitalizeBasicInfo;
import cn.kancare.mobile.bean.questionnaire.OptionDetail;
import cn.kancare.mobile.bean.questionnaire.PatientQuestion;
import cn.kancare.mobile.bean.questionnaire.PatientQuestionnaire;
import cn.kancare.mobile.bean.questionnaire.PatientQuestionnaireResult;
import cn.kancare.mobile.bean.questionnaire.QuestionDetail;
import cn.kancare.mobile.bean.questionnaire.QuestionDetailType;
import cn.kancare.mobile.core.log.CnisLog;

import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableUtils;

public class DatabaseHelper extends OrmLiteSqliteOpenHelper {
	public static final String DATABASE_NAME = "cnis-ward-round.db";
	private static final int DATABASE_VERSION = 60;

	private Map<String, Dao> daos = new HashMap<String, Dao>();

	private DatabaseHelper(Context context) {
		super(context, DATABASE_NAME, null, DATABASE_VERSION);
	}

	@Override
	public void onCreate(SQLiteDatabase database,
			ConnectionSource connectionSource) {
		try {
			TableUtils.createTable(connectionSource, User.class);
			TableUtils.createTable(connectionSource,
					PatientHospitalizeBasicInfo.class);
			TableUtils.createTable(connectionSource, Department.class);
			TableUtils.createTable(connectionSource, CnisLog.class);
			TableUtils.createTable(connectionSource, BedNumber.class);
			TableUtils.createTable(connectionSource, SysCode.class);
			TableUtils.createTable(connectionSource, CourseRecord.class);
			TableUtils.createTable(connectionSource, QuestionDetailType.class);
			TableUtils.createTable(connectionSource, QuestionDetail.class);
			TableUtils.createTable(connectionSource, OptionDetail.class);
			TableUtils.createTable(connectionSource, PatientQuestion.class);
			TableUtils
					.createTable(connectionSource, PatientQuestionnaire.class);
			TableUtils.createTable(connectionSource,
					PatientQuestionnaireResult.class);
			TableUtils.createTable(connectionSource, Setting.class);
			TableUtils.createTable(connectionSource, PatientFavorite.class);
			TableUtils.createTable(connectionSource, BodyAnalysisReport.class);
			TableUtils.createTable(connectionSource, LaboratoryIndex.class);
			TableUtils.createTable(connectionSource, TestItemDetail.class);
			TableUtils.createTable(connectionSource, TestResult.class);
			TableUtils
					.createTable(connectionSource, ChinaFoodComposition.class);
			TableUtils.createTable(connectionSource, MealRecord.class);
			TableUtils.createTable(connectionSource,
					RelationOfDietaryFood.class);
			TableUtils.createTable(connectionSource,
					SearchPageConfig.class);
			TableUtils.createTable(connectionSource,
					NutrientAdvice.class);
			TableUtils.createTable(connectionSource,
					NutrientAdviceDetail.class);
			TableUtils.createTable(connectionSource,
					NutrientAdviceSummary.class);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void onUpgrade(SQLiteDatabase database,
			ConnectionSource connectionSource, int oldVersion, int newVersion) {
		try {
			// if (newVersion == 51) {
			// TableUtils.dropTable(connectionSource, TestResult.class, true);
			// TableUtils.createTable(connectionSource, TestResult.class);
			// return;
			// }
		
			DbUpgrade.doUpgrade(database, connectionSource, oldVersion, newVersion);

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private static DatabaseHelper instance;

	/**
	 * 单例获取该Helper
	 * 
	 * @param context
	 * @return
	 */
	public static synchronized DatabaseHelper getHelper(Context context) {
		context = context.getApplicationContext();
		if (instance == null) {
			synchronized (DatabaseHelper.class) {
				if (instance == null)
					instance = new DatabaseHelper(context);
			}
		}

		return instance;
	}

	public synchronized Dao getDao(Class clazz) throws SQLException {
		Dao dao = null;
		String className = clazz.getSimpleName();

		if (daos.containsKey(className)) {
			dao = daos.get(className);
		}
		if (dao == null) {
			dao = super.getDao(clazz);
			daos.put(className, dao);
		}
		return dao;
	}

	/**
	 * 释放资源
	 */
	@Override
	public void close() {
		super.close();

		for (String key : daos.keySet()) {
			Dao dao = daos.get(key);
			dao = null;
		}
	}

}