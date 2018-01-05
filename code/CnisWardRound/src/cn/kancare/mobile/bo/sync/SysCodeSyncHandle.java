package cn.kancare.mobile.bo.sync;

import cn.kancare.mobile.bo.basic.SysCodeBo;
import cn.kancare.mobile.common.Global;
import cn.kancare.mobile.common.constant.LogTag;
import cn.kancare.mobile.core.log.CnislogBo;
import cn.kancare.mobile.core.sync.BaseSyncHandle;
import cn.kancare.mobile.core.sync.DoSyncListener;

public class SysCodeSyncHandle extends BaseSyncHandle {

	SysCodeBo sysBo;

	public SysCodeSyncHandle(CnislogBo log) {
		super(log);
		// TODO Auto-generated constructor stub
	}

	@Override
	protected String getLogTag() {
		return LogTag.ASYNC_SYSCODE;
	}

	@Override
	protected void initializeBo() {
		try {
			sysBo = new SysCodeBo(Global.currentActivity);
		} catch (Exception e) {
			doException(e);
		}
	}

	@Override
	public void doSync(DoSyncListener doSyncListener) throws Exception {
		String str1 = "";
		String str2 = "";

		// 同步syscode
		str1 = "/" + Global.WEB_API + "/syscode.ashx?opt=getlistcount";
		str2 = "/" + Global.WEB_API + "/syscode.ashx?opt=getlist";
		doDownload(str1, str2, 0, Global.REQUEST_LIMIT_SIZE, sysBo, "syscode",
				doSyncListener);
	}
}