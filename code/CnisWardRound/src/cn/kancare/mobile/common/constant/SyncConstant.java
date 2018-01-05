package cn.kancare.mobile.common.constant;

public class SyncConstant {
	public class OperateFlag {
		public static final int NONE = 0; // 刚从服务器下载时，为flag为0
		public static final int NEED_ADD_TO_SERVER = 1; // 表示需要新增到服务器
		public static final int NEED_EDIT_TO_SERVER = 2; // 表示需要修改到服务器
	}

	public class FoodType {
		public static final String FOOD = "0"; // 食材
		public static final String NUTRIENT_PRODUCT = "2"; // 肠内制剂

	}
}
