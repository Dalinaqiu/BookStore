using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using BookShopBLL;
using BookShopModels;

public partial class Master_UserRoom : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }
    public void BindData()
    {
        Users user = (Users)Session["user"];
        lbname.Text = user.Name;
        lbrole.Text = user.UserRoles.Name;
    }
    protected void lbtnmyorder_Click(object sender, EventArgs e)
    {
        Response.Redirect("MyOrder.aspx");
    }
    protected void lbtnpwd_Click(object sender, EventArgs e)
    {
        Response.Redirect("UpdatePassWord.aspx");
    }
    protected void lbtnmessage_Click(object sender, EventArgs e)
    {
        Response.Redirect("UpdateMyMessage.aspx");
    }
}
