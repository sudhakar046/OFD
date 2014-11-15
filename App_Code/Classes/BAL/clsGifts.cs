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
/// Summary description for clsGifts
/// </summary>
public class clsGifts:clsActiveMembers 
{
	public clsGifts()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string GiftName { get; set; }

    public int InsertGiftMasterDetails()
    {
        try
        {
            SqlParameter[] p = new SqlParameter[8];
            p[0] = new SqlParameter("@GiftName", GiftName);
            p[1] = new SqlParameter("@SendingDate", DOB);
            p[2] = new SqlParameter("@Name", Name);
            p[3] = new SqlParameter("@Profession", Profession);
            p[4] = new SqlParameter("@EmailId", EmailId);
            p[5] = new SqlParameter("@Phone", MobileNo);
            p[6] = new SqlParameter("@Address", Address);
            p[7] = new SqlParameter("@ChildCode", ChildCode);
            return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertGiftMaster", p);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }

    }
    public DataSet GetGiftsDetails()
    {
        try
        {
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_getGiftDetails", null);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
}
