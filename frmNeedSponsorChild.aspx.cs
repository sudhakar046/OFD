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

public partial class frmNeedSponsorChild : System.Web.UI.Page
{
    clsChild objChild = new clsChild();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = objChild.GetChildDetails();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GrvChildern.DataSource = ds.Tables[0];
                GrvChildern.DataBind();
                ViewState["state"] = false;
            }
            else
            {
                GrvChildern.EmptyDataText = "No Child Found for Sponsor";
                GrvChildern.DataBind();
            }
        }
    }

    //protected void lnkVisible_Click(object sender, CommandEventArgs e)
    //{
    //    for (int i = 0; i < GrvChildern.Rows.Count; i++)
    //    {
    //        LinkButton lnk = (LinkButton)GrvChildern.Rows[i].FindControl("lnkVisible");
    //        string lnkcode = lnk.CommandArgument;
    //        Label lblCode = (Label)GrvChildern.Rows[i].FindControl("lblCCode");
    //        if(

    //    }
    //}
    protected void GrvChildern_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "story")
        {
            if (!Convert.ToBoolean(ViewState["state"]))
            {
                string Ccdoe = e.CommandArgument.ToString();
                for (int i = 0; i < GrvChildern.Rows.Count; i++)
                {
                    Label lblCode = (Label)GrvChildern.Rows[i].FindControl("lblCCode");
                    if (Ccdoe.Equals(lblCode.Text))
                    {
                        Label lblStory = (Label)GrvChildern.Rows[i].FindControl("lblStory");
                        lblStory.Text.ToLower();
                        lblStory.Visible = true;
                        ViewState["state"] = true;
                    }
                }
            }
            else
            {
                string Ccdoe = e.CommandArgument.ToString();
                for (int i = 0; i < GrvChildern.Rows.Count; i++)
                {
                    Label lblCode = (Label)GrvChildern.Rows[i].FindControl("lblCCode");
                    if (Ccdoe.Equals(lblCode.Text))
                    {
                        Label lblStory = (Label)GrvChildern.Rows[i].FindControl("lblStory");
                        lblStory.Visible = false;
                        ViewState["state"] = false;
                    }
                }
            }
        }
        if (e.CommandName == "Sponsor")
        {
            string ChildCode = e.CommandArgument.ToString();
            Response.Redirect("~/frmSponsorText.aspx?ChildCode="+ChildCode);
        }
    }
    protected void GrvChildern_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
