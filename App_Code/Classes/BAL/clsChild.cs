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
/// Summary description for clsChild
/// </summary>
public class clsChild
{
	public clsChild()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string ChildCode { get; set; }
    public string Name { get; set; }
    public string YearOfEnrollMent { get; set; }
    public DateTime DOB { get; set; }
    public string Class { get; set; }
    public string StoryBehind { get; set; }
    public byte [] Photo { get; set; }
    public string FileName { get; set; }

    public int InsertChildMasterDetails()
    {
        try
        {
            SqlParameter[] p = new SqlParameter[7];
            p[0] = new SqlParameter("@Name", Name);
            p[1] = new SqlParameter("@DOB", DOB);
            p[2] = new SqlParameter("@YearOfEnrollment", YearOfEnrollMent);
            p[3] = new SqlParameter("@Class", Class);
            p[4] = new SqlParameter("@StoryBehind", StoryBehind);
            p[5] = new SqlParameter("@Photo", Photo);
            p[6] = new SqlParameter("@FileName", FileName);
            return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertChildMaster", p);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    public DataSet GetChildDetails()
    {
        try
        {

            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetChildDetails", null);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    public DataSet GetChildNames()
    {
        try
        {
            string stat = "Select Name,ChildCode from tbl_ChildMaster";

            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    public DataSet GetChildDetailsById()
    {
        try
        {
            SqlParameter p = new SqlParameter("@ChildCode", ChildCode);

            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetChildDetailsById", p);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    public DataSet GetChildSponsoredDetails()
    {
        try
        {


            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetChildSponsoredChildDetails", null );
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
}
