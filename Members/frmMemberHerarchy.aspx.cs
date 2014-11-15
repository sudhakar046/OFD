using System;
using System.Collections;
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

public partial class Administrator_frmMemberHerarchy : System.Web.UI.Page
{
    clsMembers objMembers = new clsMembers();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //DataSet ds = objMembers.GetMemberTypes();
            //if (ds.Tables[0].Rows.Count > 0)
            //{
            //    trvMemberTypes.DataSource = ds.Tables[0];
            //    trvMemberTypes.DataBind();
            //}
            FillTreeView();
        }
    }

    public void FillTreeView()
    {
      
        SqlDataReader Sdr = objMembers.GetMemberTypesForTreeView();
        string[,] ParentNode = new string[100, 2];
        string[,] ChildNode = new string[100, 2];
        int count = 0;
        int ChildCount = 0;
        while (Sdr.Read())
        {

            ParentNode[count, 0] = Sdr.GetValue(Sdr.GetOrdinal("MemberTypeId")).ToString();
            ParentNode[count++, 1] = Sdr.GetValue(Sdr.GetOrdinal("MemberTypeName")).ToString();

        }
        Sdr.Close();
        for (int loop = 0; loop < count; loop++)
        {
            TreeNode root = new TreeNode();
            root.Text = ParentNode[loop, 1];
            //root.Target = "_blank";
            //root.NavigateUrl = "mypage.aspx";
            
            SqlDataReader Module_Sdr = objMembers.GetMemberDetailsByMemberType(ParentNode[loop, 0]);
            while (Module_Sdr.Read())
            {
                TreeNode child = new TreeNode();
                ChildNode[ChildCount, 0] = Module_Sdr.GetValue(Module_Sdr.GetOrdinal("MemberId")).ToString();
                ChildNode[ChildCount++, 1] = Module_Sdr.GetValue(Module_Sdr.GetOrdinal("Name")).ToString();
                child.Text = Module_Sdr.GetValue(Module_Sdr.GetOrdinal("Name")).ToString();
                child.Value = Module_Sdr.GetValue(Module_Sdr.GetOrdinal("MemberId")).ToString();
               

                //child.Target = "_blank";
                //child.NavigateUrl = "your_page_Url.aspx";
                root.ChildNodes.Add(child);
            }
            Module_Sdr.Close();
            trvMemberTypes.Nodes.Add(root);

        }
        trvMemberTypes.CollapseAll();
        //SqlCon.Close();

    }
    protected void trvMemberTypes_SelectedNodeChanged(object sender, EventArgs e)
    {
        //Response.Write(trvMemberTypes.SelectedNode.Value); 
        int MemberId = Convert.ToInt32(trvMemberTypes.SelectedNode.Value);
        DataSet ds=objMembers.GetMemberDetailsById(MemberId);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Field2.Visible = true;
            GrvMembers.DataSource = ds.Tables[0];
            GrvMembers.DataBind();
        }
        else
        {
            Field2.Visible = true;
            GrvMembers.EmptyDataText = "No Member Found";
            GrvMembers.DataBind();
        }


    }
}
