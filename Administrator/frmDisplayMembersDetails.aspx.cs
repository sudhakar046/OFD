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

public partial class Administrator_frmDisplayMembersDetails : System.Web.UI.Page
{
    clsActiveMembers objMembers = new clsActiveMembers();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lnkActiveMembers_Click(object sender, EventArgs e)
    {
        objMembers.Id = 1;
        DataSet ds = objMembers.GetAllTypeMemberNames();
        if (ds.Tables[0].Rows.Count > 0)
        {
            Field2.Visible = true;
            grvMembers.DataSource = ds.Tables[0];
            grvMembers.DataBind();
        }
        else
        {
            Field2.Visible = true;
            grvMembers.EmptyDataText = "No Member Found";
            grvMembers.DataBind();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        objMembers.Id = 2;
        DataSet ds = objMembers.GetAllTypeMemberNames();
        if (ds.Tables[0].Rows.Count > 0)
        {
            Field2.Visible = true;
            grvMembers.DataSource = ds.Tables[0];
            grvMembers.DataBind();
        }
        else
        {
            Field2.Visible = true;
            grvMembers.EmptyDataText = "No Member Found";
            grvMembers.DataBind();
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        objMembers.Id = 3;
        DataSet ds = objMembers.GetAllTypeMemberNames();
        if (ds.Tables[0].Rows.Count > 0)
        {
            Field2.Visible = true;
            grvMembers.DataSource = ds.Tables[0];
            grvMembers.DataBind();
        }
        else
        {
            Field2.Visible = true;
            grvMembers.EmptyDataText = "No Member Found";
            grvMembers.DataBind();
        }
    }
    protected void grvMembers_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int MemberId = Convert.ToInt32(e.CommandArgument.ToString());
        objMembers.Id = MemberId;
        DataSet ds = objMembers.GetMemberDetailsById();
        if (ds.Tables[0].Rows.Count > 0)
        {
            Field3.Visible = true;
            DVMembers.DataSource = ds.Tables[0];
            DVMembers.DataBind();
        }
        else
        {
            Field3.Visible = true;
            DVMembers.EmptyDataText = "No Member Found";
            DVMembers.DataBind();
        }
    }
}
