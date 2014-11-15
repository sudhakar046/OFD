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
/// Summary description for clsDoners
/// </summary>
public class clsDoners:clsActiveMembers 
{
	public clsDoners()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string ProgramCode { get; set; }
    public string  Amount { get; set; }
    public string CheckNo { get; set; }
    public string BankName { get; set; }
    public string Place { get; set; }
    public string SourceACNo { get; set; }
    public string SponsorACNo { get; set; }
    public DateTime DateOfSend { get; set; }
    public string Comments { get; set; }
    public int OnlineAmount { get; set; }

    public int InsertProgramDoners()
    {
        try
        {
            SqlParameter[] p = new SqlParameter[10];
            p[0] = new SqlParameter("@ProgramCode", ProgramCode );
            p[1] = new SqlParameter("@Amount", Amount );
            p[2] = new SqlParameter("@CheckNo", CheckNo);
            p[3] = new SqlParameter("@BankName", BankName );
            p[4] = new SqlParameter("@Place", Place);
            p[5] = new SqlParameter("@Name", Name);
            p[6] = new SqlParameter("@Address", Address);
            p[7] = new SqlParameter("@EmailId", EmailId );
            p[8] = new SqlParameter("@MobileNo", MobileNo );
            p[9] = new SqlParameter("@Profession", Profession );
            return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertProgramDoners", p);

        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message.ToString());
        }
    }


    public int InsertOnlineDonations()
    {
        try
        {
            SqlParameter[] p = new SqlParameter[6];
            p[0] = new SqlParameter("@SourceACNo", SourceACNo );
            p[1] = new SqlParameter("@Amount", OnlineAmount );
            
            p[2] = new SqlParameter("@BankName", BankName);
            p[3] = new SqlParameter("@SponsorACNo", SponsorACNo );
            p[4] = new SqlParameter("@Date", DateOfSend);
            p[5] = new SqlParameter("@Comments", Comments );

            return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertOnlineDonations", p);

        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message.ToString());
        }
    }
    public DataSet GetOnlineDonations()
    {
        try
        {
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetOnlineDonaitonInfo", null); 
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    public int GetOnlineTotalAmount()
    {
        try
        {
            string stat = "select sum(Amount) as TotalAmount from tbl_OnlineDonations";
            DataSet ds= SqlHelper.ExecuteDataset (clsConnection.ConnectionString, CommandType.Text, stat, null);
            return Convert.ToInt32(ds.Tables[0].Rows[0]["TotalAmount"]);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
}
