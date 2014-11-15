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

public partial class frmInsertSupportingMemberDetails : System.Web.UI.Page
{
    clsSupportingMembers objMembers = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            objMembers = new clsSupportingMembers();
            objMembers.Name = txtMemberName.Text;
            objMembers.Address = txtAddress.Text;
            objMembers.EmailId = txtEmailId.Text;
            objMembers.MobileNo = txtMobileNo.Text;
            objMembers.ResidenceNo = txtResidenceNo.Text;
            objMembers.DateOfBirth = Convert.ToDateTime(txtDOB.Text);
            objMembers.Nationality = txtNationality.Text;
            objMembers.Field  = txtField.Text;
            objMembers.Organization = txtOrganization.Text;
            objMembers.Profession = ChkProfession.SelectedItem.Text;
            objMembers.Designation = txtDesignation.Text;
            objMembers.Contribution = ChkRupees.SelectedItem.Text;
            int i = objMembers.InsertSupportingMemberDetails();
            if (i > 0)
            {
                Page.RegisterClientScriptBlock("Child", "<script>alert('Your Registration Accepted,Conform Email Send you later')</script>");
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
        txtMemberName.Text = "";
        txtEmailId.Text = "";
        txtOrganization.Text = "";
        txtMobileNo.Text = "";
        txtDesignation.Text = "";
        txtResidenceNo.Text = "";
        txtDOB.Text = "";
        txtAddress.Text = "";
        txtNationality.Text = "";
        txtField.Text = "";
        ChkProfession.SelectedIndex = -1;
        ChkRupees.SelectedIndex = -1;
        txtMemberName.Focus();
    }
}
