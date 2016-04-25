using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BookShopBLL;

public partial class Master_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = CategoriesManager.GetDataTableByCategories();
            foreach (DataRow dr in dt.Rows)
            {
                TreeNode tn = new TreeNode();
                tn.Text = dr["Name"].ToString();
                tn.Value = dr["Id"].ToString();
                tn.NavigateUrl = "~/Book/BookList.aspx?CategoryId=" + dr["Id"].ToString();
                TreeViewLeft.Nodes.Add(tn);
            }
        }
    }
}

