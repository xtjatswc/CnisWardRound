using CNIS.Report.BLL;
using CNIS.Report.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class attendingPatient : System.Web.UI.Page
{
    DepartmentSaleBLL departmentSaleBLL = new DepartmentSaleBLL();
    public decimal totalMoney = 0m;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                DateTime end = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 25);
                txtBeginDate.Value = end.AddMonths(-1).ToString("yyyy-MM-dd");
                txtEndDate.Value = end.ToString("yyyy-MM-dd");
            }
            catch { }
            BindData();

        }

    }

    private void BindData()
    {
        DataTable dt = departmentSaleBLL.GetAttendingPatientSale(DateTime.Parse(txtBeginDate.Value), DateTime.Parse(txtEndDate.Value));
        rptProductSale.DataSource = dt;
        totalMoney = Math.Round(Global.Obj2Decimal(dt.Compute("sum(totalMoney)", "")),2);
        rptProductSale.DataBind();
    }
    protected void btnSearch_ServerClick(object sender, EventArgs e)
    {
        BindData();
    }
    protected void btnToday_Click(object sender, EventArgs e)
    {
        txtBeginDate.Value = DateTime.Now.ToString("yyyy-MM-dd");
        txtEndDate.Value = DateTime.Now.ToString("yyyy-MM-dd");

        BindData();
    }
    protected void btnYestoday_Click(object sender, EventArgs e)
    {
        txtBeginDate.Value = DateTime.Now.AddDays(-1).ToString("yyyy-MM-dd");
        txtEndDate.Value = DateTime.Now.AddDays(-1).ToString("yyyy-MM-dd");

        BindData();
    }
}