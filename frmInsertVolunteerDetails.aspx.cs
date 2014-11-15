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

public partial class frmInsertVolunteerDetails : System.Web.UI.Page
{
    clsVolunteers objVolunteers = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            objVolunteers  = new clsVolunteers ();
            objVolunteers.Name = txtMemberName.Text;
            objVolunteers.Address = txtAddress.Text;
            objVolunteers.EmailId = txtEmailId.Text;
            objVolunteers.MobileNo = txtMobileNo.Text;
            objVolunteers.DateOfBirth = Convert.ToDateTime(txtDOB.Text);
            objVolunteers.Nationality = txtNationality.Text;
            objVolunteers.AreaOfInterest = RBListArea.SelectedItem.Text;
            int i = objVolunteers.InsertVolunteerDetails();
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
        txtMobileNo.Text = "";               
        txtDOB.Text = "";
        txtAddress.Text = "";
        txtNationality.Text = "";
        RBListArea.SelectedIndex = -1;        
        txtMemberName.Focus();
    }
}
