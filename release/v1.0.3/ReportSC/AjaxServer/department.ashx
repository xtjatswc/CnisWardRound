<%@ WebHandler Language="C#" Class="department" %>

using System;
using System.Web;
using CNIS.Report.BLL;

public class department : IHttpHandler {

    HttpContext context = null;
    DepartmentSaleBLL departmentSaleBLL = new DepartmentSaleBLL();

    public void ProcessRequest (HttpContext contextPara) {
        context = contextPara;
        //context.Response.ContentType = "text/plain";
        //context.Response.Write("Hello World");
        string opt = context.Request.QueryString["opt"];
        switch (opt)
        {
            case "GetDepartmentSaleXmlData":
                {
                    GetDepartmentSaleXmlData();
                    break;
                }
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

    public void GetDepartmentSaleXmlData()
    {
        string beginDate = context.Request.QueryString["beginDate"];
        string endDate = context.Request.QueryString["endDate"];

        if (beginDate == null) return;
        
        string xml = departmentSaleBLL.GetDepartmentSaleXmlData(DateTime.Parse(beginDate), DateTime.Parse(endDate));
        context.Response.ContentType = "text/xml";
        context.Response.Charset = "utf-8";
        context.Response.Expires = 0;
        context.Response.Cache.SetNoStore();
        context.Response.Write(xml);
        context.Response.End();
    }
}