<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="frmDonation.aspx.cs" Inherits="frmDonation" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h4>Donations</h4>
<fieldset id="Field1" runat ="server" >
<table>
<tr>
<td align="left" >
<p><span style="color: #00CC00"><b>Orphan Care & Development Foundation</b></span> relies on everyone's commitment to the humanitarian cause and its underlying values. The strongest possible support from individuals, companies and foundations is essential if we are to meet the challenges we are currently facing. Your support to CCDF is more than just a donation - it is a true act of humanity.</p>
<p><span style="color: #00CC00"><b>Let's join</b></span> hands and support more and more needy children - the future of any nation and help them come out of their ignorance and other problems which it entails by giving them a gift of education and providing them with all-round support essential for their overall well-being. Your donations are a vital source of income that will allow us to make a significant positive impact on the society around us.</p>
</td>
</tr>
<tr>
<td><asp:LinkButton ID="lnkCashDonations" runat ="server" 
        onclick="lnkCashDonations_Click" >Cash Donations</asp:LinkButton></td>
</tr>
<tr>
<td><asp:LinkButton ID="lnkTimeDonations" runat ="server" 
        onclick="lnkTimeDonations_Click" >Time Donations</asp:LinkButton></td>
</tr>
<tr>
<td><asp:LinkButton ID="lnkInKind" runat ="server" onclick="lnkInKind_Click" >In-Kind Donations</asp:LinkButton></td>
</tr>
<tr>
<td><asp:LinkButton ID="lnkOtherWays" runat ="server" onclick="lnkOtherWays_Click" >Other Ways</asp:LinkButton></td>
</tr>
</table>
</fieldset>
<fieldset id="Field2" runat ="server" visible="false"  >
<table>
<tr>
<td align="left" >
<p><span style="color: #00CC00"><b>Cash donations</b></span> can be made either personally or by sending an account payee Cheque / Draft through mail. (All donations are Tax Exempted U/s  80G of Income Tax Act)</p>
<p>Info for making DD/Cheque :
In favour of : Orphan Care & Development Foundation
Payable at : 'Hyderabad'
Please send it to our Hyderabad G.P.O.
</p>
<p>Orphan Care & Development Foundation
A-88, Ist Floor,
Madhu Vihar, Pajagutta,
    HYderabad-500002
Ph: 040-2312070</p>
<p style="text-align: center"><asp:ImageButton ID="img1" runat ="server" ImageUrl="~/Images/PlzCheck.JPG" PostBackUrl="~/frmSendOnlineDonations.aspx"  />  </p>
<p>Guideline for making contribution : Your contribution of, 
   Rs. 200/- a month 
   <p>can give a child Nutrition at learning centre.
   Rs. 300/- a month
    <p>can give a child Nutrition & After-school support.
   Rs. 400/- a month<p>can give a child complete package of Nutrition, health check-up,
   after-school support, celebration of festivals etc.
   Rs. 1000/- a month<p>&nbsp;can be used for Sensitization & Awareness Programs including 
   Media campaigns, workshops, seminars and capacity building 
   initiatives.
   Rs. 5000/- a month
    <p>can be used for Infrastructure set up.
   Rs. 50000/- a month 
   can be used for Corpus Fund.
We respect the intention of our donors and use the money donated by them for the purpose intended by the donor.

</p>
</td>
</tr>
</table>
</fieldset>
<fieldset id="Field3" runat ="server" visible="false" >
<table>
<tr>
<td align="left" >
<p><span style="color: #00CC00"><b>WE ALSO NEED VOLUNTEERS</b></span>, who can spare a few hours to be with us for office-management, record-keeping, teaching students etc.
Please Click here for details about volunteering.</p>
</td>
</tr>
</table>
</fieldset>
<fieldset id="Field4" runat ="server" visible="false" >
<table>
<tr>
<td align="left" >
<p style="text-align: center; color: #00CC00"><b>In-Kind Donations</b></p>
<p><span style="color: #00CC00"><b>Gift to CCDF and its Children</b></span> : 

You can make your contribution by your benevolent gifts for the organization and its children.

</p>
                                                                                                        <p>The following items are required for our various offices : 
 

</p>
                                                                                                        <p>*Computer systems 
 
</p>
                                                                                                        <p>*Computer printers</p>
                                                                                                        <p>&nbsp;*Coolers 
 
Fans 
 
</p>
                                                                                                        <p>*Digital camera 
 

</p>
                                                                                                        <p>CCDF has effectively channeled our donors' gifts into compassionate action since 2006. Thanks to supporters like you, thousands of people from the city’s poorest communities are gaining a better life. 
</p>
</td>
</tr>
</table>
</fieldset>
<fieldset id="Field5" runat ="server" visible="false" >
<table>
<tr>
<td align="left" >
<p style="color: #00CC00; text-align: center"><b>OTHER WAYS OF HELPING US </b> </p>
<p>You can help us through one of the following ways :
 

Send us the names and addresses of five friends who share your values. 
 
</p>
    <p>Email CCDF website link to 20 friends and encourage them to donate. 
 
</p>
    <p>Pass  newsletters on to a friend who does not know about CCDF.</p>
    <p>&nbsp;<span style="color: #00CC00"><b>Most importantly</b></span>, spread the word about our efforts to help someone less fortunate than our self and in the process, spread a little bit of peace and goodwill throughout the society. 
</p>
</td>
</tr>
</table>
</fieldset>
</center>
</asp:Content>

