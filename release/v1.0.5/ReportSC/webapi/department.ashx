<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using CNIS.Report.BLL;
using Newtonsoft.Json;
using System.Collections.Generic;
using CNIS.Report.Common;

public class Handler : IHttpHandler {

    department departmentBLL = new department();
    
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
        string str = JsonConvert.SerializeObject(departmentBLL.GetModelList(""), Global.GetJsonFormatting(context), Global.jsonSerializerSettings);
        return str;
    }

    private string GetListCount(HttpContext context)
    {
        string str = departmentBLL.GetListCount();
        return str;
    }
    
    public bool IsReusable {
        get {
            return false;
        }
    }

}