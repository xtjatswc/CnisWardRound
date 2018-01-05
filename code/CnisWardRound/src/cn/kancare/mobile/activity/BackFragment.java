package cn.kancare.mobile.activity;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import cn.kancare.mobile.R;
import cn.kancare.mobile.common.Global;
import cn.kancare.mobile.common.constant.LogTag;
import cn.kancare.mobile.core.view.fragment.BaseFragment;
import cn.kancare.mobile.core.view.fragment.OnBackListener;

public class BackFragment extends BaseFragment {
	OnBackListener onBackListener;

	TextView textViewBack;
	TextView textViewTitle;

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		View layout = super.onCreateView(inflater, container,
				savedInstanceState);

		try {
			if (Global.currentPatient == null) {
				textViewTitle.setText("");
			} else {
				textViewTitle.setText("患者："
						+ Global.currentPatient.getPatientName());
			}
			textViewBack.setOnClickListener(new View.OnClickListener() {

				public void onClick(View v) {
					if (onBackListener == null) {
						doBack();
					} else {
						onBackListener.BeforPressBack(BackFragment.this);
					}
				}
			});
		} catch (Exception e) {
			doException(e);
		}

		return layout;
	}

	public void doBack() {
		getActivity().onBackPressed();
	}

	@Override
	protected String getLogTag() {
		return LogTag.BACK;
	}

	@Override
	protected void initializeBo() throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	protected int getLayoutId() {
		return R.layout.back;
	}

	@Override
	public void onAttach(Activity activity) {
		super.onAttach(activity);
		try {
			onBackListener = (OnBackListener) activity;
		} catch (Exception e) {

		}
	}

	@Override
	protected void setView(View layout) throws Exception {
		textViewBack = (TextView) layout.findViewById(R.id.textViewBack);
		textViewTitle = (TextView) layout.findViewById(R.id.textViewTitle);
	}
}