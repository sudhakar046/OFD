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

public partial class frmProgrammDonate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            clsPrograms objProgram = new clsPrograms();
            DataSet ds = objProgram.GetProgrammNames();
            if (ds.Tables[0].Rows.Count > 0)
            {
                RBListPrograms.DataTextField = "Title";
                RBListPrograms.DataValueField = "ProgramCode";
                RBListPrograms.DataSource = ds.Tables[0];
                RBListPrograms.DataBind();
            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            clsDoners objDoners = new clsDoners();
            objDoners.ProgramCode = RBListPrograms.SelectedItem.Value;
            objDoners.Amount = txtAmount.Text;
            objDoners.CheckNo = txtCheckNo.Text;
            objDoners.BankName = txtBankName.Text;
            objDoners.Place = txtPlace.Text;
            objDoners.Name = txtName.Text;
            objDoners.Address = txtAddress.Text;
            objDoners.EmailId = txtEmail.Text;
            objDoners.MobileNo = txtPhone.Text;
            objDoners.Profession = txtProfession.Text;
            int i = objDoners.InsertProgramDoners();
            if (i >0)
            {
                Page.RegisterClientScriptBlock("Child", "<script>alert('Your Donation Accepted,Thank Q')</script>");
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
        RBListPrograms.SelectedIndex = -1;
        txtAmount.Text = "";
        txtCheckNo.Text = "";
        txtBankName.Text = "";
        txtPlace.Text = "";
        txtName.Text = "";
        txtAddress.Text = "";
        txtEmail.Text = "";
        txtPhone.Text = "";
        txtProfession.Text = "";
        
       
    }
}
