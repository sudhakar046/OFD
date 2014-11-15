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

public partial class frmPrograms : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            clsPrograms objPrograms = new clsPrograms();
            DataSet ds = objPrograms.GetProgrammWithDescription();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GRVPrograms.DataSource = ds.Tables[0];
                GRVPrograms.DataBind();
                ViewState["index"] = null;
            }
        }
    }
    int index = 0;
    public int getIndex()
    {

        if (ViewState["index"] == null)
        {
            ViewState["index"] = 1;
            index = 1;
        }
        else
        {
            index = index + Convert.ToInt32(ViewState["index"]);
        }
        return index;
    }

    protected void GRVPrograms_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ProgramCode")
        {
            string ProgramCode = e.CommandArgument.ToString();
            Response.Redirect("~/frmDisplayProgramDetails.aspx?ProgramCode=" + ProgramCode );
        }
        else if (e.CommandName == "Donations")
        {
            Response.Redirect("~/frmSponsors.aspx");
        }
    }
}
