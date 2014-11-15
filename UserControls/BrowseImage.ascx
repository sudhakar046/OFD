﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BrowseImage.ascx.cs" Inherits="BrowseImage" %>
<style type="text/css">
    .style4
    {
        width: 330px;
        text-align: right;
    }
</style>



<table style="border-style: groove; width: 300px; height: 80px; background-color: #99FFCC;">
    <tr>
        <td class="style4" height="3px">
            <asp:FileUpload ID="Upload1" runat="server" Font-Names="Verdana" 
                Font-Size="10px"  />
        </td>
        <td rowspan="3">
            <asp:Image ID="imgMyPhoto" BorderStyle="Dashed" BorderWidth="1" runat="server" 
                Height="80px" Width="100px" ImageUrl="~/Images/images[2].jpg" />
        </td>
    </tr>
    <tr>
        <td class="style4" height="3px">
            <asp:Button ID="btnShowImg" CausesValidation="false" runat="server" Text="Show My Photo" 
                OnClick="btnShowImg_Click" Font-Names="Verdana" Font-Size="10px" />
        </td>
    </tr>
    <tr>
        <td class="style4">
<asp:Label ID="lblMessage" runat="server" Font-Names="Verdana" Font-Size="10px" 
            ForeColor="Red" ></asp:Label>
        </td>
    </tr>
    </table>
    <br />
