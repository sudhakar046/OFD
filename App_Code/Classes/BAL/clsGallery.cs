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
/// Summary description for clsGallery
/// </summary>
public class clsGallery:clsPrograms 
{
	public clsGallery()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int UploadProgramGallery()
    {
        try
        {
            SqlParameter[] p = new SqlParameter[3];
            p[0] = new SqlParameter("@Photo", Photo);
            p[1] = new SqlParameter("@FileName", FileName);
            p[2] = new SqlParameter("@ProgramCode", ProgramCode );
            return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_UploadGallery", p);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }

    }

    public DataSet GetGalleryCount()
    {
        try
        {
            SqlParameter p = new SqlParameter("@ProgramCode", ProgramCode);
            return SqlHelper.ExecuteDataset (clsConnection.ConnectionString, CommandType.StoredProcedure,"sp_GetGalleryCount", p);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }

    }

}
