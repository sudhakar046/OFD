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
/// Summary description for clsSupportingMembers
/// </summary>
public class clsSupportingMembers:clsActiveMembers 
{
	public clsSupportingMembers()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string Field { get; set; }
    public string Organization { get; set; }
    public string Designation { get; set; }
    public string Contribution { get; set; }

    public int InsertSupportingMemberDetails()
    {
        try
        {
            SqlParameter[] p = new SqlParameter[12];
            p[0] = new SqlParameter("@Name", Name);
            p[1] = new SqlParameter("@Address", Address);
            p[2] = new SqlParameter("@EmailId", EmailId);
            p[3] = new SqlParameter("@MobileNo", MobileNo);
            p[4] = new SqlParameter("@ResidenceNo", ResidenceNo);
            p[5] = new SqlParameter("@DOB", DateOfBirth);
            p[6] = new SqlParameter("@Nationality", Nationality);
            p[7] = new SqlParameter("@Field", Field );
            p[8] = new SqlParameter("@Organization", Organization );
            p[9] = new SqlParameter("@Profession", Profession);
            p[10] = new SqlParameter("@Designation", Designation );
            p[11] = new SqlParameter("@Contribution", Contribution);
            return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertSupportingMembers", p);

        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message.ToString());
        }
        
    }
}
