<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using CNIS.Report.BLL;
using Newtonsoft.Json;
using System.Collections.Generic;
using CNIS.Report.Common;

public class Handler : IHttpHandler
{

    bodyanalysisreport bodyanalysisreportBLL = new bodyanalysisreport();

    public void ProcessRequest(HttpContext context)
    {


        string opt = context.Request.QueryString["opt"];
        string str = "";

        switch (opt)
        {
            case "getlist":
                {
                    str = GetList(context);
                    break;
                }
        }

        Global.ResponseJsonString(context, str);
    }

    private string GetList(HttpContext context)
    {
        string limit = context.Request.QueryString["limitStart"] + "," + context.Request.QueryString["limitSize"];
        string str = JsonConvert.SerializeObject(bodyanalysisreportBLL.GetList(limit), Global.GetJsonFormatting(context), Global.jsonSerializerSettings);
        return str;
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}