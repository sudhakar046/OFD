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

public partial class frmSendGift : System.Web.UI.Page
{
    clsChild objChild = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            objChild = new clsChild();
            DataSet ds = objChild.GetChildNames();
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlChildren.DataTextField = "Name";
                ddlChildren.DataValueField = "ChildCode";
                ddlChildren.DataSource = ds.Tables[0];
                ddlChildren.DataBind();
                ddlChildren.Items.Insert(0, "Select Child Name");

            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            clsGifts objGifts = new clsGifts();
            objGifts.GiftName = txtTypeOfGift.Text;
            objGifts.DOB = Convert.ToDateTime(txtDate.Text);
            objGifts.Name = txtName.Text;
            objGifts.Profession = txtProfession.Text;
            objGifts.EmailId = txtEmail.Text;
            objGifts.MobileNo = txtPhoneNo.Text;
            objGifts.Address = txtAddress.Text;
            objGifts.ChildCode = ddlChildren.SelectedItem.Value;
            int i = objGifts.InsertGiftMasterDetails();
            if (i > 0)
            {
                Page.RegisterClientScriptBlock("Child", "<script>alert('Your Gift Accepted,Than Q')</script>");
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
            lblMsg.Text = ex.Message;
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtTypeOfGift.Text = "";
        txtName.Text = "";
        txtPhoneNo.Text = "";
        txtProfession.Text = "";
        txtEmail.Text = "";
        txtAddress.Text = "";
        txtDate.Text = "";
        ddlChildren.SelectedIndex = 0;

    }
}
