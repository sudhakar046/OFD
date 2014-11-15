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

public partial class frmSendOnlineDonations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            clsDoners objDonation = new clsDoners();
            objDonation.SourceACNo = "0078453234567";
            objDonation.SponsorACNo = txtSponsorAccountNo.Text;
            objDonation.OnlineAmount = Convert.ToInt32(txtAmount.Text);
            objDonation.BankName = txtBankName.Text;
            objDonation.DateOfSend = Convert.ToDateTime(txtDateOfSend.Text);
            objDonation.Comments = txtComments.Text;
            int Flag = objDonation.InsertOnlineDonations();
            if (Flag > 0)
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Your Donation Transffered to 0078453234567 Acno, ThanQ!";

            }
            else
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Transaction Declined";
            }
        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message;
        }
    }
}
