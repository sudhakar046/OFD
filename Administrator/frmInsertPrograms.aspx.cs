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

public partial class Administrator_frmInsertPrograms : System.Web.UI.Page
{
    clsPrograms objPrograms = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            objPrograms = new clsPrograms();
            objPrograms.ProgramCode = txtProgrammCode.Text.Trim();
            objPrograms.Title = txtTile.Text;
            objPrograms.Description = txtDescription.Text;
            objPrograms.TargetPopulation = txtTarget.Text;
            objPrograms.GeographicalLocation = txtGeoLocation.Text;
            objPrograms.AgeGroup = txtAgeGroup.Text;
            objPrograms.Objective = txtObjective.Text;
            objPrograms.Approach = txtApproach.Text;
            objPrograms.Achievement = txtAchievements.Text;
            objPrograms.Assessment = txtAssesment.Text;
            int i = objPrograms.InsertProgrammDetails();
            if (i > 0)
            {
                Page.RegisterClientScriptBlock("Child", "<script>alert('Programm Inserted Successfully')</script>");
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
        txtProgrammCode.Text = "";
        txtTile.Text = "";
        txtObjective.Text = "";
        txtGeoLocation.Text = "";
        txtAssesment.Text = "";
        txtApproach.Text = "";
        txtAgeGroup.Text = "";
        txtAchievements.Text = "";
        txtDescription.Text = "";
        txtTarget.Text = "";
        txtProgrammCode.Focus();

    }
}
