
<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using CNIS.Report.BLL;
using Newtonsoft.Json;
using System.Collections.Generic;
using CNIS.Report.Common;

public class Handler : IHttpHandler {

    testresult testresultBLL = new testresult();
    
    public void ProcessRequest (HttpContext context) {


        string opt = context.Request.QueryString["opt"];
        string str = "";
        
        switch(opt)
        {
            case "upload":
                {
                    str = Upload(context);
                    break;
                }
        }

        Global.ResponseJsonString(context, str);
    }

    private string Upload(HttpContext context)
    {
        string json = context.Request.Form["uploadJsonData"];
        return testresultBLL.doSync(json);
    }
    
    public bool IsReusable {
        get {
            return false;
        }
    }

}