<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using CNIS.Report.BLL;
using Newtonsoft.Json;
using System.Collections.Generic;
using CNIS.Report.Common;

public class Handler : IHttpHandler {

    patienthospitalizebasicinfo patienthospitalizebasicinfoBLL = new patienthospitalizebasicinfo();
    
    public void ProcessRequest (HttpContext context) {
        string opt = context.Request.QueryString["opt"];
        string str = "";

        switch (opt)
        {
            case "getlist":
                {
                    str = GetList(context);
                    break;
                }
            case "upload":
                {
                    str = Upload(context);
                    break;
                }
            case "getlistcount":
                {
                    str = GetListCount(context);
                    break;
                }
        }

        Global.ResponseJsonString(context, str);
        
        

    }

    private string GetList(HttpContext context)
    {
        string sdate = context.Request.QueryString["sdate"];
        string edate = DateTime.Parse(context.Request.QueryString["edate"]).AddDays(1).AddSeconds(-1).ToString("yyyy-MM-dd HH:mm:ss");

        string strWhere = " a.InHospitalData >= '" + sdate + "' and a.InHospitalData <= '" + edate + "' ";
        string limit = context.Request.QueryString["limitStart"] + "," + context.Request.QueryString["limitSize"];
        string orderBy = " a.PatientHospitalize_DBKey desc";
        string str = JsonConvert.SerializeObject(patienthospitalizebasicinfoBLL.GetModelList(strWhere, limit, orderBy), Global.GetJsonFormatting(context), Global.jsonSerializerSettings);
        return str;
    }

    private string GetListCount(HttpContext context)
    {
        string sdate = context.Request.QueryString["sdate"];
        string edate = DateTime.Parse(context.Request.QueryString["edate"]).AddDays(1).AddSeconds(-1).ToString("yyyy-MM-dd HH:mm:ss");

        string strWhere = " a.InHospitalData >= '" + sdate + "' and a.InHospitalData <= '" + edate + "' ";
        string str = patienthospitalizebasicinfoBLL.GetListCount(strWhere);
        return str;
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

    private string Upload(HttpContext context)
    {
        string json = context.Request.Form["uploadJsonData"];
        return patienthospitalizebasicinfoBLL.doSync(json);
    }

}