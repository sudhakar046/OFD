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

public partial class Administrator_frmViewOnlineDonaitonDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            clsDoners objDonation = new clsDoners();
            DataSet ds = objDonation.GetOnlineDonations();
            if (ds.Tables[0].Rows.Count > 0)
            {
                grvDonations.DataSource = ds.Tables[0];
                grvDonations.DataBind();
            }
        }
    }
    public int Sum()
    {
        clsDoners objDonaiton = new clsDoners();
        int Flag = objDonaiton.GetOnlineTotalAmount();
        return Flag;

        
    }
}
