<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using CNIS.Report.BLL;
using Newtonsoft.Json;
using CNIS.Report.Common;

public class Handler : IHttpHandler {

    user userBLL = new user();
    
    public void ProcessRequest (HttpContext context) {
        string opt = context.Request.QueryString["opt"];
        string str = "";

        switch (opt)
        {
            case "testconn":
                {
                    str = userBLL.TestConn();
                    break;
                }
            case "testwebconn":
                {
                    str = "ok";
                    break;
                }
        }

        CNIS.Report.Common.Global.ResponseJsonString(context, str);
    }
    
    public bool IsReusable {
        get {
            return false;
        }
    }

}