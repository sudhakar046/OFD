using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["CnStr"].ConnectionString;
        SqlConnection cn = new SqlConnection(connStr);
        cn.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_MemberMaster", cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "abc");
        gvlist.DataSource = ds.Tables[0];
        gvlist.DataBind();
        //here is code logic completed...
        
    }
}
