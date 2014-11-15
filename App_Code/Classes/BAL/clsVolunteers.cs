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
/// Summary description for clsVolunteers
/// </summary>
public class clsVolunteers:clsActiveMembers 
{
	public clsVolunteers()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int InsertVolunteerDetails()
    {
        try
        {
            SqlParameter[] p = new SqlParameter[7];
            p[0] = new SqlParameter("@Name", Name);
            p[1] = new SqlParameter("@Address", Address);
            p[2] = new SqlParameter("@EmailId", EmailId);
            p[3] = new SqlParameter("@MobileNo", MobileNo);
            p[4] = new SqlParameter("@DOB", DateOfBirth);
            p[5] = new SqlParameter("@Nationality", Nationality);
            p[6] = new SqlParameter("@AreaOfInterest", AreaOfInterest);
            return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertVolunteerDetails", p);

        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message.ToString());
        }
    }
}
