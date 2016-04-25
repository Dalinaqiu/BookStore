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

public partial class MemberShip_UpdateMyMessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["User"] != null)
            {
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
        Users user = (Users)Session["User"];
        this.txtLoginId.Text = user.LoginId;
        this.txtname.Text = user.Name;
        this.txtaddress.Text = user.Address;
        this.txtmail.Text = user.Mail;
        this.txtphone.Text = user.Phone;

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        #region 更新用户信息
        Users user = (Users)Session["User"];
        user.LoginId = txtLoginId.Text.Trim();
        user.Mail = this.txtmail.Text.Trim();
        user.Name = this.txtname.Text.Trim();
        user.Phone = this.txtphone.Text.Trim();
        user.Address = this.txtaddress.Text.Trim();
        if (UserManager.UpdateUser(user))
        {
            lbmessage.Text = "信息更新成功";
        }
        else
        {
            lbmessage.Text = "信息更新失败";
        }
        #endregion
    }
}
