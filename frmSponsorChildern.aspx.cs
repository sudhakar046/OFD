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

public partial class frmSponsorChildern : System.Web.UI.Page
{
    clsChild objChild = new clsChild();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ChildCode"] == null)
        {
            Response.Redirect("~/frmNeedSponsorChild.aspx");
        }
        if (!IsPostBack)
        {
            objChild.ChildCode=Request.QueryString["ChildCode"].ToString();
            DataSet ds = objChild.GetChildDetailsById ();
            if (ds.Tables[0].Rows.Count > 0)
            {
                BindImage1.LaodImageByte = (byte[])ds.Tables[0].Rows[0]["Photo"];
                BindImage1.LoadFileName = ds.Tables[0].Rows[0]["FileName"].ToString();
                lblChildName.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                lblAge.Text = ds.Tables[0].Rows[0]["Age"].ToString();
                txtSponsorType.Text = Session["SonsorType"].ToString();
                txtAmount.Text = Session["Amount"].ToString();
            }
            
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            clsSponsors objSponsor = new clsSponsors();
            objSponsor.Name = txtName.Text;
            objSponsor.EmailId = txtEmail.Text;
            objSponsor.MobileNo = txtPhoneNo.Text;
            objSponsor.Address = txtAddress.Text;
            objSponsor.SponsorType = txtSponsorType.Text;
            objSponsor.Amount = txtAmount.Text;
            objSponsor.ChildCode = Request.QueryString["ChildCode"].ToString();
            int i = objSponsor.InsertChildSponsorDetails();
            if (i > 0)
            {
                Page.RegisterClientScriptBlock("Child", "<script>alert('ThanQ For Adopting Child')</script>");
            }
            else
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Error Try Again!";
            }
        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message.ToString();
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtEmail.Text = "";
        txtPhoneNo.Text = "";
        txtAmount.Text = "";
        txtAddress.Text = "";
        txtSponsorType.Text = "";
    }
}
