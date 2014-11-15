using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using OrphinFoundation.DAL;

/// <summary>
/// Summary description for clsSponsors
/// </summary>
public class clsSponsors:clsActiveMembers 
{
	public clsSponsors()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int SponsorId { get; set; }
    public string SponsorType { get; set; }
    public string Amount { get; set; }

    public int InsertChildSponsorDetails()
    {
        try
        {
            SqlParameter[] p = new SqlParameter[7];
            p[0] = new SqlParameter("@Name", Name);
            p[1] = new SqlParameter("@EmailId", EmailId);
            p[2] = new SqlParameter("@PhoneNo", MobileNo);
            p[3] = new SqlParameter("@Address", Address);
            p[4] = new SqlParameter("@SponsorType", SponsorType);
            p[5] = new SqlParameter("@Amount", Amount);
            p[6] = new SqlParameter("@ChildCode", ChildCode);
            return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertChildSponserDetails", p);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }


    }
}
