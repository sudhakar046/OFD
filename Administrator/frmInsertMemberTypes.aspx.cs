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

public partial class Administrator_frmInsertMemberTypes : System.Web.UI.Page
{
    clsMembers objMembers = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            objMembers = new clsMembers();
            objMembers.MemberTypeId = txtMemberTypeId.Text;
            objMembers.MemberTypeName = txtMemberTypeName.Text;
            objMembers.Description = txtDescription.Text.ToUpperInvariant();
            int i = objMembers.InsertMemberTypes();
            if (i > 0)
            {
                Page.RegisterClientScriptBlock("Child", "<script>alert('Member Types Inserted Successfully')</script>");
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
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtMemberTypeId.Text = "";
        txtMemberTypeName.Text = "";
        txtDescription.Text = "";
        txtMemberTypeId.Focus();
    }
}
