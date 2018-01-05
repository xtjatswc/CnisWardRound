using CNIS.Report.BLL;
using CNIS.Report.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class supplyPriceSet : System.Web.UI.Page
{
    ProductReportBLL productReportBLL = new ProductReportBLL();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
        }
        else
        {
            try
            {
                //保存价格
                int c = Request.Form.AllKeys.Count(o => o.Contains("supplyPriceTextBox"));
                if (c > 0)
                {
                    SaveSupplyPrice();
                }
            }
            catch { }
            BindData();

        }

    }

    private void BindData()
    {
        DataTable dt = productReportBLL.GetProductList();
        rptProductSale.DataSource = dt;
        rptProductSale.DataBind();
    }

    private void SaveSupplyPrice()
    {
        foreach (string k in Request.Form.Keys)
        {
            string v = Request.Form[k];
            string RecipeAndProduct_DBKey = k.Replace("supplyPriceTextBox", "");

            productReportBLL.SetSupplyPrice(RecipeAndProduct_DBKey, Global.Obj2Decimal(v));
        }
    }


}