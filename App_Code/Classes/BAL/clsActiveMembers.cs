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
/// Summary description for clsActiveMembers
/// </summary>
public class clsActiveMembers:clsMembers 
{
	public clsActiveMembers()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string OfficePhone { get; set; }
    public string ResidenceNo { get; set; }
    public DateTime DateOfBirth { get; set; }
    public string Nationality { get; set; }
    public string Qualfication { get; set; }
    public string Institution { get; set; }
    public string Profession { get; set; }
    public string AreaOfInterest { get; set; }

    public int InsertActiveMemberDetails()
    {
        try
        {
            SqlParameter[]p=new SqlParameter[12];
            p[0] = new SqlParameter("@Name", Name);
            p[1] = new SqlParameter("@Address", Address);
            p[2] = new SqlParameter("@EmailId", EmailId);
            p[3] = new SqlParameter("@MobileNo", MobileNo);
            p[4] = new SqlParameter("@OfficeNo", OfficePhone);
            p[5] = new SqlParameter("@ResidenceNo", ResidenceNo);
            p[6] = new SqlParameter("@DOB", DateOfBirth);
            p[7] = new SqlParameter("@Nationality", Nationality);
            p[8] = new SqlParameter("@Qualification", Qualfication);
            p[9] = new SqlParameter("@Institution", Institution);
            p[10] = new SqlParameter("@Profession", Profession);
            p[11] = new SqlParameter("@AreaOfInterest", AreaOfInterest);
            return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertActiveMembers", p);

        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message.ToString());
        }
    }
    public int Id { get; set; }
    public DataSet GetAllTypeMemberNames()
    {
        try
        {
            SqlParameter p = new SqlParameter("@Id", Id);
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetAllTypesMemberNames", p);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message.ToString());
        }
    }
    public DataSet GetMemberDetailsById()
    {
        try
        {
            SqlParameter p = new SqlParameter("@MemberId", Id);
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetMemberDetailsById", p);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message.ToString());
        }
    }
}
