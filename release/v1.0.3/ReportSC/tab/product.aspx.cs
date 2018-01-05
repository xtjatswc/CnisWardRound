using CNIS.Report.BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tab_product : System.Web.UI.Page
{
    ProductReportBLL productReportBLL = new ProductReportBLL();

    protected void Page_Load(object sender, EventArgs e)
    {
        

        DataTable dt = productReportBLL.GetProductSale();
        rptProductSale.DataSource = dt;
        rptProductSale.DataBind();
    }
}