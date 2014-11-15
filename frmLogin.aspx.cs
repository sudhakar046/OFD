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

public partial class frmLogin : System.Web.UI.Page
{
    clsLogin objLogin = new clsLogin();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtUserName.Text == "admin" && txtPassword.Text == "admin")
            {
                Response.Redirect("~/Administrator/frmAdminHome.aspx");
            }
            else
            {
                LoginWebService objLoginWebServices = new LoginWebService();
                int MemberId = objLoginWebServices.CheckUseLoginDetails(txtUserName.Text.Trim(), txtPassword.Text.Trim());
                //objLogin.UserName = txtUserName.Text.Trim();
                //objLogin.Password = txtPassword.Text;
                //int MemberId = objLogin.ChekUserLogin();
                if (MemberId > 0)
                {
                    Response.Redirect("~/Members/frmMemberHome.aspx");
                }
            }
            
        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message;
        }
    }
}
