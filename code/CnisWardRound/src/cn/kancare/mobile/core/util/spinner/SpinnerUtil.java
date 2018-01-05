package cn.kancare.mobile.core.util.spinner;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import cn.kancare.mobile.bo.basic.SysCodeBo;

public class SpinnerUtil {

	/**
	 * 根据值, 设置spinner默认选中:
	 * 
	 * @param spinner
	 * @param value
	 */
	public static void setSpinnerValue(Spinner spinner, String value) {
		SpinnerAdapter apsAdapter = spinner.getAdapter(); // 得到SpinnerAdapter对象
		int k = apsAdapter.getCount();
		for (int i = 0; i < k; i++) {
			if (((SpinnerOption) apsAdapter.getItem(i)).getValue()
					.equals(value)) {
				spinner.setSelection(i, true);// 默认选中项
				break;
			}
		}
	}

	public static void setSpinnerValue(Activity context, SysCodeBo sysBo,
			Spinner spinner, String sysCodeType, String value) throws Exception {

		ArrayList<SpinnerOption> towns = sysBo.getSpinnerOptions(sysCodeType);
		setSpinnerValue(context, spinner, value, towns);
	}

	public static void setSpinnerValue(Activity context, Spinner spinner,
			String value, List<SpinnerOption> towns) {
		// 设置Adapter
		ArrayAdapter<SpinnerOption> townAdapter = new ArrayAdapter<SpinnerOption>(
				context, android.R.layout.simple_spinner_item, towns);
		townAdapter
				.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		spinner.setAdapter(townAdapter);
		setSpinnerValue(spinner, value);
	}

	public static String getSpinnerValue(Spinner spinner) {
		SpinnerOption spinnerOption = (SpinnerOption) spinner.getSelectedItem();
		if(spinnerOption == null) return "";
		
		return spinnerOption.getValue();
	}
}
