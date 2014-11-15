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

public partial class frmFeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSumit_Click(object sender, EventArgs e)
    {
        if (txtName.Text != "" && txtAddress.Text != "" && txtEmailId.Text != "" && txtComments.Text != "")
        {
            Page.RegisterClientScriptBlock("Child", "<script>alert('Than Q for Sending Feed Back')</script>");
           // Response.Redirect("~/Home.htm");
        }
        else
        {
            Page.RegisterClientScriptBlock("Child", "<script>alert('Plz Fill the Required Fields')</script>");
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtAddress.Text = "";
        txtEmailId.Text = "";
        txtComments.Text = "";
        txtPhoneNo.Text = "";
    }
}
