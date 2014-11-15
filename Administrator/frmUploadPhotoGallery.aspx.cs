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

public partial class Administrator_frmUploadPhotoGallery : System.Web.UI.Page
{
    clsPrograms objPrograms = new clsPrograms();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = objPrograms.GetProgrammNames();
            if (ds.Tables[0].Rows.Count > 0)
            {
                grvPrograms.DataSource = ds.Tables[0];
                grvPrograms.DataBind();
            }
        }
    }
    protected void grvPrograms_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string progcode = e.CommandArgument.ToString();
        Session["ProgCode"] = progcode;
        Field2.Visible = true;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            clsGallery objGellery = new clsGallery();
            objGellery.ProgramCode = Session["ProgCode"].ToString();
            objGellery.Photo = (byte[])Session["Photo"];
            objGellery.FileName=Session["FileName"].ToString ();
            int i=objGellery.UploadProgramGallery();
            if ( i>0)
            {
                lblMsg.Visible=true;
                lblMsg.Text="Gallery Uploaded";
                BrowseImage1.LoadDefaultImage();
            }
        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message;
        }
    }
}
