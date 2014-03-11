<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="userProfileEdit.aspx.cs" Inherits="ASE_Project.userProfileEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

    .label{
        float : left;
   display : inline;
   display : block;
   text-align: left;
}
        .textbox {
               display : inline;
               display : block;
   text-align: left;
                       }
      
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
 </style>   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <h2> User Profile Edit</h2>
        <br />
          <asp:Label ID="status" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" ForeColor="red"></asp:Label>
        <br />
        <br />
    <ul>
       <li>
        <asp:label runat="server" Font-Names="Tahoma" CssClass="label" Font-Bold="True" >Name:&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="name" runat="server" BackColor="#FFCC66" CssClass="textbox" Width="150px"  Font-Names="Tahoma"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="name" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        </li>
        <li>
      <asp:label runat="server" Font-Names="Tahoma" CssClass="label" Font-Bold="True" >PhNo:&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="contactno" runat="server" BackColor="#FFCC66" CssClass="textbox" Width="150px"  Font-Names="Tahoma"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="contactno" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        </li>
        <li>
       <asp:label runat="server" Font-Names="Tahoma" CssClass="label" Font-Bold="True" >ZipCode:&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="zipcode" runat="server" BackColor="#FFCC66" CssClass="textbox" Width="150px"  Font-Names="Tahoma"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="zipcode" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="zipcode" ErrorMessage="Enter valid zipcode" 
            ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
        </li> 
        <li>
            
        
            <asp:Button ID="update" runat="server" onclick="update_click" Text="Update" BorderStyle="Groove" BorderColor="#CC6600" BackColor="#FFFFCC" Font-Bold="True" CssClass="RegisterAsUser" />
         </li>
        
        
      
        
        
    </ul>
    </div>
</asp:Content>
