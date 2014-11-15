<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true"
    CodeFile="frmPrograms.aspx.cs" Inherits="frmPrograms" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <center>
        <h3>
            Programs</h3>
        <fieldset id="Field1" runat="server">
            <table>
                <tr>
                    <td align="left" >
                        <asp:GridView ID="GRVPrograms" runat="server" AutoGenerateColumns="false" ShowHeader="false"
                            GridLines="None" Font-Bold="True" Font-Names="Trebuchet MS" 
                            ForeColor="#009933" onrowcommand="GRVPrograms_RowCommand">
                            <Columns>
                            
                               
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <table>
                                            <tr >
                                                <td align="left" valign="top">
                                               <span style="color:Black">  <%# getIndex()%> </span><span style="color:Black"> . </span>
                                                </td>
                                                <td align="left" width="200px" valign="top">
                                                <asp:LinkButton  ID="lblTitle" runat="server" Text='<%#Eval("Title") %>' CommandArgument='<%#Eval("ProgramCode") %>' CommandName="ProgramCode" ></asp:LinkButton>
                               
                                                </td>
                                                <td align="right" width="200px" valign="top">
                                                    <asp:ImageButton ID="btnSubmit" runat="server" ImageUrl="~/Images/ImgButton.JPG" CommandName="Donations" />
                                                </td>
                                            </tr>
                                            <tr >
                                                <td colspan="3" width="400px" style="height:auto" align="left" valign="top"  >
                                                    <%--<asp:Label ID="lblDescription" CssClass="just" runat="server" Text='<%#Eval("Description") %>'></asp:Label>--%>
                                                <span class="just">
                                                <%#Eval("Description") %>
                                                </span>
                                                </td>
                                            </tr>
                                           
                                            
                                        </table>
                                    </ItemTemplate>
                                </asp:TemplateField>
                               
                                
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </fieldset>
    </center>
</asp:Content>
