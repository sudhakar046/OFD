<%@ WebHandler Language="C#" Class="Handler" %>


using System;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

public class Handler : IHttpHandler {
    
public void ProcessRequest (HttpContext context) 
{
SqlConnection con = new SqlConnection();
con.ConnectionString = ConfigurationManager.ConnectionStrings
                      ["CnStr"].ConnectionString;

// Create SQL Command 
SqlCommand cmd = new SqlCommand();

string  SNo = context.Request.QueryString["id"].ToString();


cmd.CommandText = "Select FileName,Photo from tbl_MemberMaster" +
                  " where MemberId ='" + SNo+"'";
cmd.CommandType = System.Data.CommandType.Text;
cmd.Connection = con;

//SqlParameter ImageID = new SqlParameter
                    //("@Std_Agr_Id", System.Data.SqlDbType.Int);
//ImageID.Value = context.Request.QueryString["Std_Agr_Id"];
//cmd.Parameters.Add(ImageID);
con.Open();
SqlDataReader dReader = cmd.ExecuteReader();
dReader.Read();
context.Response.BinaryWrite((byte[])dReader["Photo"]);
dReader.Close();
con.Close();
}
public bool IsReusable
{
    get
    {
        return false;
    }
}

}