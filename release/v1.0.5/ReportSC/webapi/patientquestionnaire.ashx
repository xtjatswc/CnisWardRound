﻿
<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using CNIS.Report.BLL;
using Newtonsoft.Json;
using System.Collections.Generic;
using CNIS.Report.Common;

public class Handler : IHttpHandler {

    patientquestionnaire patientquestionnaireBLL = new patientquestionnaire();
    
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
        return patientquestionnaireBLL.doSync(json);
    }

    private string GetList(HttpContext context)
    {
        string sdate = context.Request.QueryString["sdate"];
        string edate = DateTime.Parse(context.Request.QueryString["edate"]).AddDays(1).AddSeconds(-1).ToString("yyyy-MM-dd HH:mm:ss");

        string strWhere = " d.InHospitalData >= '" + sdate + "' and d.InHospitalData <= '" + edate + "' ";
        string limit = context.Request.QueryString["limitStart"] + "," + context.Request.QueryString["limitSize"];
        string orderBy = " PatientQuestionnaire_DBKey desc";
        string str = JsonConvert.SerializeObject(patientquestionnaireBLL.GetModelList(strWhere, limit, orderBy), Global.GetJsonFormatting(context), Global.jsonSerializerSettings);
        return str;
    }

    private string GetListCount(HttpContext context)
    {
        string sdate = context.Request.QueryString["sdate"];
        string edate = DateTime.Parse(context.Request.QueryString["edate"]).AddDays(1).AddSeconds(-1).ToString("yyyy-MM-dd HH:mm:ss");
        string strWhere = " b.InHospitalData >= '" + sdate + "' and b.InHospitalData <= '" + edate + "' ";

        string str = patientquestionnaireBLL.GetListCount(strWhere);
        return str;
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}