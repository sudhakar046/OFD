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
/// Summary description for clsMembers
/// </summary>
public class clsMembers:clsChild 
{
	public clsMembers()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string MemberTypeId { get; set; }
    public string MemberTypeName { get; set; }
    public string Description { get; set; }
      public string EmailId { get; set; }
    public string Address { get; set; }
    public string MobileNo { get; set; }
    public string UserName { get; set; }
    public string Password { get; set; }
    

    public int InsertMemberTypes()
    {
        try
        {
            SqlParameter[] p = new SqlParameter[3];
            p[0] = new SqlParameter("@MemberTypeId", MemberTypeId);
            p[1] = new SqlParameter("@MemberTypeName", MemberTypeName);
            p[2] = new SqlParameter("@Description", Description);
            return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertMemberTypes", p);
        }
        catch (Exception ex)
        {
            throw new ArgumentException (ex.Message.ToString());
        }
    }
    public DataSet GetMemberTypes()
    {
        try
        {
            string stat = "Select MemberTypeId,MemberTypeName from tbl_MemberTypes";
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message.ToString());
        }
    }
    public int InsertMemberDetals()
    {
        try
        {
            SqlParameter[] p = new SqlParameter[9];
            p[0] = new SqlParameter("@Name", Name);
            p[1] = new SqlParameter("@EmailId", EmailId);
            p[2] = new SqlParameter("@Address", Address);
            p[3] = new SqlParameter("@MobileNo", MobileNo);
            p[4] = new SqlParameter("@Photo", Photo);
            p[5] = new SqlParameter("@FileName", FileName);
            p[6] = new SqlParameter("@UserName", UserName);
            p[7] = new SqlParameter("@Password", Password);
            p[8] = new SqlParameter("@MemberTypeId", MemberTypeId);
            return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertMemberMasterDetails", p);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message.ToString());
        }
    }

    public SqlDataReader  GetMemberTypesForTreeView()
    {
        try
        {
            string stat = "Select MemberTypeId,MemberTypeName from tbl_MemberTypes";
            return SqlHelper.ExecuteReader(clsConnection.ConnectionString, CommandType.Text, stat, null);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message.ToString());
        }
    }
    public SqlDataReader GetMemberDetailsByMemberType(string MemberType)
    {
        try
        {
            string stat = "Select * from tbl_MemberMaster Where MemberTypeId='"+MemberType +"'";
            return SqlHelper.ExecuteReader(clsConnection.ConnectionString, CommandType.Text, stat, null);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message.ToString());
        }
    }
    public DataSet GetMemberDetailsById(int MemberId)
    {
        try
        {
            string stat = "Select * from tbl_MemberMaster Where MemberId=" + MemberId;
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message.ToString());
        }
    }
}
