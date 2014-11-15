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

public partial class frmDisplayGallery : System.Web.UI.Page
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
        //if (!IsPostBack)
        //{
        //    clsGallery objGallery = new clsGallery();
        //    DataSet ds = objGallery.GetGalleryCount();
        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        grvGallery.DataSource = ds.Tables[0];
        //        grvGallery.DataBind();
        //    }
        //}
    }
    protected void grvPrograms_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string ProgramCode = e.CommandArgument.ToString();
        clsGallery objGallery = new clsGallery();
        objGallery.ProgramCode = ProgramCode;
        DataSet ds = objGallery.GetGalleryCount();
       if (ds.Tables[0].Rows.Count > 0)
       {
           Field1.Visible = true;
           grvGallery.DataSource = ds.Tables[0];
           grvGallery.DataBind();
       }
        
    }
}
