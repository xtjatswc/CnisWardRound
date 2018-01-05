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

public partial class patient : System.Web.UI.Page
{
    ProductReportBLL productReportBLL = new ProductReportBLL();
    public decimal totalMoney = 0m;
    public List<SaleModel> listSaleModel;
    public Dictionary<string, RefundModel> refundList;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        BindData();
    }

    private void BindData()
    {
        listSaleModel = productReportBLL.GetSaleDetail(txtPatientName.Text);
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
}