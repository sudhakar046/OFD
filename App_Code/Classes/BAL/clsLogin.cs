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
/// Summary description for clsLogin
/// </summary>
public class clsLogin:clsMembers 
{
	public clsLogin()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int ChekUserLogin()
    {
        try
        {
            SqlParameter[] p = new SqlParameter[3];
            p[0] = new SqlParameter("@UserName", UserName);
            p[1] = new SqlParameter("@Password", Password);
            p[2] = new SqlParameter("@MemberId", SqlDbType.Int);
            p[2].Direction = ParameterDirection.Output;
            SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "Sp_VerifyUserLogin", p);
            return Convert.ToInt32(p[2].Value);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
}
