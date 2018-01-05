using CNIS.Report.BLL;
using CNIS.Report.Common;
using CNIS.Report.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tab_saleDetail : System.Web.UI.Page
{
    ProductReportBLL productReportBLL = new ProductReportBLL();
    public decimal totalMoney = 0m;
    public List<SaleModel> listSaleModel;
    public Dictionary<string, RefundModel> refundList;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtBeginDate.Value = DateTime.Now.ToString("yyyy-MM-dd");
            BindData();
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        BindData();
    }

    private void BindData()
    {
        listSaleModel = productReportBLL.GetSaleDetail(DateTime.Parse(txtBeginDate.Value));
        totalMoney = listSaleModel.Sum(o => o.TotalMoney);

        //退费
        if (listSaleModel.Count == 0)
        {
            refundList = new Dictionary<string, RefundModel>();
        }
        else
        {
            string NutrientAdviceSummaryDBKeys = listSaleModel.Select(o => o.NutrientAdviceSummaryDBKey).Distinct().Aggregate((s1, s2) => s1 + "," + s2);
            refundList = productReportBLL.GetRefundDetail(NutrientAdviceSummaryDBKeys);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        txtBeginDate.Value = DateTime.Parse(txtBeginDate.Value).AddDays(-1).ToString("yyyy-MM-dd");
        BindData();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtBeginDate.Value = DateTime.Parse(txtBeginDate.Value).AddDays(1).ToString("yyyy-MM-dd");
        BindData();
    }
}