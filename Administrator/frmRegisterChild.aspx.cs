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

public partial class Administrator_frmRegisterChild : System.Web.UI.Page
{
    clsChild objChild = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            objChild = new clsChild();
            objChild.Name = txtChildName.Text;
            objChild.DOB = Convert.ToDateTime(txtDateOfBirth.Text);
            objChild.YearOfEnrollMent = txtYearOfEnroll.Text.ToUpperInvariant();
            objChild.Class = txtClass.Text;
            objChild.StoryBehind = txtStory.Text.ToUpperInvariant();
            objChild.Photo=(byte[])Session["Photo"];
            objChild.FileName = Session["FileName"].ToString();
            int i = objChild.InsertChildMasterDetails();
            if (i > 0)
            {
                Page.RegisterClientScriptBlock("Child", "<script>alert('Child Details Inserted Successfully')</script>");
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
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtChildName.Text = "";
        txtDateOfBirth.Text = "";
        txtClass.Text = "";
        txtStory.Text = "";
        txtYearOfEnroll.Text = "";
        //BrowseImage1.DefaultImageUrl = "~/Photos/NoImage.jpg";
        BrowseImage1.LoadDefaultImage();
        
        
        

    }
}
