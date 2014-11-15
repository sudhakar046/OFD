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

public partial class Administrator_frmUploadNewsLetters : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            clsNewsLetter objNews = new clsNewsLetter();
            objNews.Issue = txtIssue.Text;
            objNews.Story = txtStory.Text;
            objNews.Month = txtMonth.Text;
            int i = objNews.InsertNewsLetterDetails();
            if (i > 0)
            {
                Page.RegisterClientScriptBlock("Child", "<script>alert('News Posted Successfully')</script>");
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
        txtMonth.Text = "";
        txtStory.Text = "";
        txtIssue.Text = "";
        txtIssue.Focus();
    }
}
