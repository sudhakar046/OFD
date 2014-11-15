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

public partial class frmSponsorText : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ChildCode"] == null)
        {
            Response.Redirect("~/frmNeedSponsorChild.aspx");
        }
    }
    protected void lnk1_Click(object sender, EventArgs e)
    {
        string ChildCode = Request.QueryString["ChildCode"].ToString();
        Session["SonsorType"] = "1 Years";
        Session["Amount"] = "4800";
        Response.Redirect("~/frmSponsorChildern.aspx?ChildCode="+ChildCode);

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string ChildCode = Request.QueryString["ChildCode"].ToString();
        Session["SonsorType"] = "2 Years";
        Session["Amount"] = "9600";
        Response.Redirect("~/frmSponsorChildern.aspx?ChildCode=" + ChildCode);
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        string ChildCode = Request.QueryString["ChildCode"].ToString();
        Session["SonsorType"] = "3 Years";
        Session["Amount"] = "15000";
        Response.Redirect("~/frmSponsorChildern.aspx?ChildCode=" + ChildCode);
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        string ChildCode = Request.QueryString["ChildCode"].ToString();
        Session["SonsorType"] = "5 Years";
        Session["Amount"] = "25000";
        Response.Redirect("~/frmSponsorChildern.aspx?ChildCode=" + ChildCode);
    }
}
