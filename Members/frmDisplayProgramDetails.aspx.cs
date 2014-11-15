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

public partial class frmDisplayProgramDetails : System.Web.UI.Page
{
    clsPrograms objPrograms = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["ProgramCode"] == null)
            {
                Response.Redirect("~/frmPrograms.aspx");
            }
            objPrograms = new clsPrograms();
            DataSet ds = objPrograms.GetProgrammDetailsById(Request.QueryString["ProgramCode"].ToString());
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblTitle.Text = ds.Tables[0].Rows[0]["Title"].ToString ();
                lblTitle1.Text = ds.Tables[0].Rows[0]["Title"].ToString();
                lblTargetPopulation.Text = ds.Tables[0].Rows[0]["TargetPopulation"].ToString();
                lblDescription.Text = ds.Tables[0].Rows[0]["Description"].ToString();
                lblGeo.Text = ds.Tables[0].Rows[0]["GeographincalLocation"].ToString();
                lblAgeGroup.Text = ds.Tables[0].Rows[0]["AgeGroup"].ToString();
                lblObjective.Text = ds.Tables[0].Rows[0]["Objective"].ToString();
                lblAssesment.Text = ds.Tables[0].Rows[0]["Assessment"].ToString();
                lblStrategy.Text = ds.Tables[0].Rows[0]["Approach"].ToString();
                lblAchievements.Text = ds.Tables[0].Rows[0]["Achievements"].ToString();


            }
        }
    }
}
