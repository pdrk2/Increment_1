<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ASE_Project.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                    
<style type="text/css">
#Submit #Submit1
        {
    -moz-border-radius: 20px;
    -webkit-border-radius: 20px;
    -khtml-border-radius: 20px;
    border-radius: 20px;        
    border: solid #FF0000; 
            background-color: #C0C0C0; 
            font-family: verdana; 
            font-size: 10pt; 
            font-weight: bold;
            border-top-left-radius: 40px 30px;
            border-bottom-right-radius: 30% 25%;
            border-top-right-radius: 40px;
            border-radius: 40px;
        }
    </style>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
				<h2 class="title">Login </h2>
                
    <asp:Label ID="Label3" runat="server" Text="Login" Visible="False" Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" ForeColor="red"></asp:Label>
    <br />
    <br />
				<asp:Label ID="label1" runat="server" Font-Bold="true" Font-Names="Tahoma" Text="Username " AssociatedControlID="Name" />
<asp:TextBox id="name" BackColor="#FFCC66" Width="150px"  Font-Names="Tahoma" runat="server" />
<br /><br />
<asp:Label ID="label2" runat="server" Font-Bold="true" Font-Names="Tahoma" Text="Password  " AssociatedControlID="Password" />
<asp:TextBox id="password" BackColor="#FFCC66" TextMode="password" Width="150px"  Font-Names="Tahoma" runat="server" />
<br /><br />
  <asp:Button ID="Submit" runat="server" onclick="user_click" Text="Login as User" BorderStyle="Groove" BorderColor="#CC6600" BackColor="#FFFFCC" Font-Bold="True" CssClass="Submit" />
<asp:Button ID="Submit1" runat="server" onclick="vendor_click" Text="Login as Vendor" BorderStyle="Groove" BorderColor="#CC6600" BackColor="#FFFFCC" Font-Bold="True" CssClass="Submit" />
</asp:Content>
