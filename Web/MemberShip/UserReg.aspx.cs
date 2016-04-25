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

public partial class MemberShip_UserReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, ImageClickEventArgs e)
    {
        #region 用户注册
        Users user = new Users();
        user.LoginId = txtLoginId.Text;
        user.LoginPwd = txtLoginPwd.Text;
        user.Mail = txtEmail.Text;
        user.Name = txtName.Text;
        user.Phone = txtTele.Text;
        user.Address = txtAddress.Text;
        if (UserManager.UserReg(user))
        {
            Response.Write("<script>alert('注册成功')</script>");
            Response.Redirect("UserLogin.aspx?operate=reg");
        }
        else
        {
            Response.Write("<script>alert('该用户名已被注册')</script>");
        }
        #endregion
    }
}
