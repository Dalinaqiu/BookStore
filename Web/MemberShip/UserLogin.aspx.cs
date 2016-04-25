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
using BookShopBLL;
using BookShopModels;

public partial class MemberShip_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["operate"] = Request.QueryString["operate"];
        }
    }
    protected void btnLogin_Click(object sender, ImageClickEventArgs e)
    {
        #region 登陆

        Users user = UserManager.Login(txtLoginId.Text, txtLoginPwd.Text);
        if (txtLogincode.Text == Session["code"].ToString())
        {
            if (user == null)
            {
                labmessage.Text = "输入的用户名或密码错误";
            }
            else
            {
                if (user.UserStates.Id == 1)
                {
                    Session["user"] = user;
                    if (ViewState["operate"].ToString() == "Redact")
                    {
                        Response.Redirect("~/Book/RedactMyOrder.aspx");
                    }
                    else
                    {
                        Response.Redirect("~/MemberShip/UserRoom.aspx");
                    }
                }
                else
                {
                    labmessage.Text = "您的账号已被禁用";
                }
            }
        }
        else
        {
            labmessage.Text = "输入的验证码错误";
        }
        #endregion
    }
    protected void btnRegister_Click(object sender, ImageClickEventArgs e)
    {
        #region 注册
        Response.Redirect("UserReg.aspx");
        #endregion
    }
}
