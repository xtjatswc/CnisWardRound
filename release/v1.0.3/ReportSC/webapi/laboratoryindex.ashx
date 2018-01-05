<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using CNIS.Report.BLL;
using Newtonsoft.Json;
using System.Collections.Generic;
using CNIS.Report.Common;

public class Handler : IHttpHandler
{

    laboratoryindex laboratoryindexBLL = new laboratoryindex();

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
        string strWhere = "";
        string limit = context.Request.QueryString["limitStart"] + "," + context.Request.QueryString["limitSize"];
        string orderBy = " LaboratoryIndex_DBKey desc";
        string str = JsonConvert.SerializeObject(laboratoryindexBLL.GetModelList(strWhere, limit, orderBy), Global.GetJsonFormatting(context), Global.jsonSerializerSettings);
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