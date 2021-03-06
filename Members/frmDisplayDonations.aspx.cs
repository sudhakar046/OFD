﻿using System;
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

public partial class Administrator_frmDisplayDonations : System.Web.UI.Page
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
        string ProgCode = e.CommandArgument.ToString();
        DataSet ds = objPrograms.GetDonarInfoByProgramCode(ProgCode);
        if (ds.Tables[0].Rows.Count > 0)
        {
            grvSponsors.DataSource = ds.Tables[0];
            grvSponsors.DataBind();
        }
        else
        {
            grvSponsors.EmptyDataText = "No Sponsor Found";
            grvSponsors.DataBind();
        }
    }
}
