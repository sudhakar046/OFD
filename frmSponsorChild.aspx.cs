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

public partial class frmSponsorChild : System.Web.UI.Page
{
    clsChild objChild = new clsChild();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = objChild.GetChildSponsoredDetails();
            if (ds.Tables[0].Rows.Count > 0)
            {
                grvChildern.DataSource = ds.Tables[0];
                grvChildern.DataBind();
            }
            else
            {
                grvChildern.EmptyDataText = "No Childern Found";
                grvChildern.DataBind();
            }
        }
    }
}
