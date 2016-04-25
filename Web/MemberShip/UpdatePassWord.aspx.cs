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

public partial class MemberShip_UpdatePassWord : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnok_Click(object sender, EventArgs e)
    {
        Users user = (Users)Session["User"];
        if (user.LoginPwd == txtpwdold.Text)
        {
            user.LoginPwd = txtpwdagin.Text;
            UserManager.UpdateUser(user);
            lbmessage.Text = "密码修改成功，记得下次用新密码登录哦";
        }
        else
        {
            lbmessage.Text = "亲，输入原密码不正确";
        }
    }
}
