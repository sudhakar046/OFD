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

public partial class frmDisplayNewsLetters : System.Web.UI.Page
{
    clsNewsLetter objNews = new clsNewsLetter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = objNews.GetNewsMonths();
            if (ds.Tables[0].Rows.Count > 0)
            {
                grvMonths.DataSource = ds.Tables[0];
                grvMonths.DataBind();
            }
            else
            {
                grvMonths.EmptyDataText = "No News Found";
                grvMonths.DataBind();
            }
        }
    }
    protected void grvMonths_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int NewsLetterId =Convert.ToInt32( e.CommandArgument.ToString());
        DataSet ds = objNews.GetNewsDetailsByMonths(NewsLetterId );
        if (ds.Tables[0].Rows.Count > 0)
        {
            Field2.Visible = true;
            lblIssue.Text = ds.Tables[0].Rows[0]["Issue"].ToString();
            lblMonth.Text = ds.Tables[0].Rows[0]["Month"].ToString();
            lblStory.Text = ds.Tables[0].Rows[0]["Story"].ToString();
        }
    }
}
