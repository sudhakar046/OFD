using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for clsConnection
/// </summary>
public class clsConnection
{
	public clsConnection()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    static string connectionString = ConfigurationManager.ConnectionStrings["CnStr"].ConnectionString;
    public static string ConnectionString
    {
        get
        {
            return connectionString;
        }

    }
}
