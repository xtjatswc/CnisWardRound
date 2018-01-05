
<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using CNIS.Report.BLL;
using Newtonsoft.Json;
using System.Collections.Generic;
using CNIS.Report.Common;

public class Handler : IHttpHandler {

    patientquestion patientquestionBLL = new patientquestion();
    
    public void ProcessRequest (HttpContext context) {


        string opt = context.Request.QueryString["opt"];
        string str = "";
        
        switch(opt)
        {
            case "getlist":
                {
                    str = GetList(context);
                    break;
                }
            case "getlistcount":
                {
                    str = GetListCount(context);
                    break;
                }
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
        return patientquestionBLL.doSync(json);
    }
    
    private string GetList(HttpContext context)
    {
        string strWhere = "";
        string limit = context.Request.QueryString["limitStart"] + "," + context.Request.QueryString["limitSize"];
        string orderBy = " PatientQuestion_DBKey desc";
        string str = JsonConvert.SerializeObject(patientquestionBLL.GetModelList(strWhere, limit, orderBy), Global.GetJsonFormatting(context), Global.jsonSerializerSettings);
        return str;
    }

    private string GetListCount(HttpContext context)
    {
        string str = patientquestionBLL.GetListCount();
        return str;
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}