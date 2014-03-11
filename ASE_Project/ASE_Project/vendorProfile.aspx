<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="vendorProfile.aspx.cs" Inherits="ASE_Project.Vendor_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
      ul {
    list-style: none;
    margin: 0;
    padding: 0;
    font: 16px arial-black;
    display: block !important;
    display: inline;
    overflow: hidden;
}
 li .label{
        float : left;
   display : inline;
   display : block;
   text-align: left;
   font-family:Tahoma;
   font-weight:bold;
   font-size:medium;
  
}
   .clear
     {
         clear: both;
     }
     #user_profile span 
{
    position: absolute;
    left: 200px;
    font-weight: bold !important;
font-size: 14px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="user_profile">

    <h2> Vendor Personal Profile</h2>
        <br />
    <span style="float:right;text-align: center; right: 120px;"> <a href="vendorProfileEdit.aspx">Edit</a></span>
     <br class="clear" />
    <ul>
        <li>
           

       <label runat="server" font-names="Tahoma" font-bold="True">Name:&nbsp;</label>
        <asp:Label ID="name" runat="server" Text="Label" Font-Names="Tahoma" Font-Bold="True"></asp:Label>
        </li>
        <br />
        <li>
        <label runat="server" font-names="Tahoma" font-bold="True" >Email:&nbsp;</label>
        <asp:Label ID="email" runat="server" Text="Label" Font-Names="Tahoma"></asp:Label>
        </li>
        <br />
        <li>
       <label runat="server" font-names="Tahoma" font-bold="True" >ContactNo:&nbsp;</label>
        <asp:Label ID="contact" runat="server" Text="Label" Font-Names="Tahoma"></asp:Label>
        </li>
        <br />
        <li>
       <label runat="server" font-names="Tahoma" font-bold="True" >Zipcode:&nbsp;</label>
        <asp:Label ID="zipcode" runat="server" Text="Label" Font-Names="Tahoma"></asp:Label>
        </li>
    </ul>
    </div>
</asp:Content>
