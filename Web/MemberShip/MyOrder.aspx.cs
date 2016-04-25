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

public partial class MemberShip_MyOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if (Session["User"] != null)
            {
                BindData();
            }
            else
            {
                Response.Redirect("UserLogin.aspx?operate=a");
            }
        }
    }
    public void BindData()
    {
        #region 绑定信息
        Users user = (Users)Session["User"];
        gvorderlist.DataSource = OrderManager.GetOrdersByName(user.Name);
        gvorderlist.DataBind();
        #endregion
    }
    protected void gvorderlist_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvorderlist.PageIndex = e.NewPageIndex;
        BindData();
    }
    protected void gvorderlist_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "lbtndetail")
        {
            Response.Redirect("MyOrderDetail.aspx?OrderId=" + Convert.ToInt32(e.CommandArgument));
        }
        else if (e.CommandName == "lbtndelete")
        {
            OrderManager.DeleteOrderById(Convert.ToInt32(e.CommandArgument));
            BindData();
        }
    }
}
