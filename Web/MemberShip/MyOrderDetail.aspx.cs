using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using BookShopModels;
using BookShopBLL;

public partial class MemberShip_MyOrderDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["User"] != null)
            {
                ViewState["OrderId"] = Request.QueryString["OrderId"];
                BindData();
            }
            else
            {
                Response.Redirect("UserLogin.aspx");
            }
            
        }
    }
    public void BindData()
    {
        gvorderdetail.DataSource = OrderBookManager.GetOrderBook(Convert.ToInt32(ViewState["OrderId"]));
        gvorderdetail.DataBind();
    }
    protected void lbntreturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("MyOrder.aspx");
    }
    protected void gvorderdetail_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvorderdetail.PageIndex = e.NewPageIndex;
        BindData();
    }
}
