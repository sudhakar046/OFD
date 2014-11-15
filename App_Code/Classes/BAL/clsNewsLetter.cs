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
/// Summary description for clsNewsLetter
/// </summary>
public class clsNewsLetter
{
	public clsNewsLetter()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int NewsLetterId  { get; set; }
    public string Issue { get; set; }
    public string Story { get; set; }
    public string    Month { get; set; }
    public int InsertNewsLetterDetails()
    {
        try
        {
            SqlParameter[] p = new SqlParameter[3];
            p[0] = new SqlParameter("@Issue", Issue);
            p[1] = new SqlParameter("@Story", Story);
            p[2] = new SqlParameter("@Month", Month);
            return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertNewsLetter", p);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    public DataSet GetNewsMonths()
    {
        try
        {
            string stat = "Select NewsLetterId,Month from tbl_NewsLetter";
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    public DataSet GetNewsDetailsByMonths(int NewsLetterId)
    {
        try
        {
            string stat = "Select * from tbl_NewsLetter where NewsLetterId="+NewsLetterId ;
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

}
