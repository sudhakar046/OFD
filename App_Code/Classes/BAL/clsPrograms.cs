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
/// Summary description for clsPrograms
/// </summary>
public class clsPrograms:clsChild 
{
	public clsPrograms()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string ProgramCode { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public string TargetPopulation { get; set; }
    public string GeographicalLocation { get; set; }
    public string AgeGroup { get; set; }
    public string Objective { get; set; }
    public string Approach { get; set; }
    public string Achievement { get; set; }
    public string Assessment { get; set; }

    public int InsertProgrammDetails()
    {
        try
        {
            SqlParameter[] p = new SqlParameter[10];
            p[0] = new SqlParameter("@ProgramCode", ProgramCode);
            p[1] = new SqlParameter("@Title", Title);
            p[2] = new SqlParameter("@Description", Description);
            p[3] = new SqlParameter("@TargetPopulation", TargetPopulation);
            p[4] = new SqlParameter("@GeographicalLocation", GeographicalLocation);
            p[5] = new SqlParameter("@AgeGroup", AgeGroup);
            p[6] = new SqlParameter("@Objective", Objective);
            p[7] = new SqlParameter("@Approach", Approach);
            p[8] = new SqlParameter("@Achievements", Achievement);
            p[9] = new SqlParameter("@Assessment", Assessment);
            return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertProgramMaster", p);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }

    }
    public DataSet GetProgrammNames()
    {
        try
        {
            string stat = "Select ProgramCode,Title from tbl_ProgramMaster";
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat,null );
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }

    }
    public DataSet GetProgrammWithDescription()
    {
        try
        {
            string stat = "Select ProgramCode,Title,Description from tbl_ProgramMaster";
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }

    }
    public DataSet GetProgrammDetailsById(string ProgramCode)
    {
        try
        {
            string stat = "Select * from tbl_ProgramMaster where ProgramCode='" + ProgramCode+"'";
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }

    }
    public DataSet GetDonarInfoByProgramCode(string ProgramCode)
    {
        try
        {
            string stat = "Select * from tbl_ProgramDoners where ProgramCode='" + ProgramCode + "'";
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }


}
