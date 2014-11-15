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

public partial class Administrator_frmRegistrationMember : System.Web.UI.Page
{
    clsMembers objMembers = null;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            objMembers = new clsMembers();
            DataSet ds = objMembers.GetMemberTypes();
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlMemberType.DataTextField = "MemberTypeName";
                ddlMemberType.DataValueField = "MemberTypeId";
                ddlMemberType.DataSource = ds.Tables[0];
                ddlMemberType.DataBind();
                ddlMemberType.Items.Insert(0, "Select MemberType");
                
            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            objMembers = new clsMembers();
            objMembers.Name = txtMemberName.Text;
            objMembers.Address = txtAddress.Text;
            objMembers.MobileNo = txtMobileNo.Text;
            objMembers.EmailId = txtAddress.Text;
            objMembers.Photo = (byte[])Session["Photo"];
            objMembers.FileName = Session["FileName"].ToString();
            objMembers.MemberTypeId = ddlMemberType.SelectedItem.Value;
            objMembers.UserName = txtUserName.Text;
            objMembers.Password = txtPassword.Text;
            int i = objMembers.InsertMemberDetals();
            if (i > 0)
            {
                Page.RegisterClientScriptBlock("Child", "<script>alert('Member Details Inserted Successfully')</script>");
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
        txtMemberName.Text = "";
        txtAddress.Text = "";
        txtMobileNo.Text = "";
        txtPassword.Text = "";
        txtUserName.Text = "";
        txtEmailId.Text = "";
        ddlMemberType.SelectedIndex = 0;
        BrowseImage1.LoadDefaultImage();

    }
}
