<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="registerUser.aspx.cs" Inherits="ASE_Project.registerUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
     
        #registration_user input
{
    right: 20px;
            margin-left: 146px;
        }
        #Register
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
        ul {
    list-style: none;
    margin: 0;
    padding: 0;
    font: 16px arial-black;
    display: block !important;
    display: inline;
    overflow: hidden;
}

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
        #register {
           
          background: #860659;
    border: 1px double #DDD;
    border-radius: 5px;
    box-shadow: 0 0 5px #333;
    color: white;
    float: left;
    padding: 5px 10px;
    width: 165px;
    outline: none;
    width:30px;
    height:30px;
    text-align: center;
            font-size: 11px;
            font-weight: bold;
            font-family:  Arial;
                   
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="registration_user">
    
       <h2>User Registration</h2>
         <br />
        <asp:Label ID="Label1" runat="server" Text="User Registration" Visible="False" Font-Bold="True" Font-Names="tahoma" Font-Size="Medium" ForeColor="#009933"></asp:Label>
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
                <asp:label runat="server" Font-Names="Tahoma" CssClass="label" Font-Bold="True" >Email:&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="email"  runat="server" CssClass="textbox" BackColor="#FFCC66"  Font-Names="Tahoma"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="email" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="email" ErrorMessage="Enter valid email id" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </li>
            <li>
                <asp:label runat="server" Font-Names="Tahoma" CssClass="label" Font-Bold="True" >Password:&nbsp;&nbsp;&nbsp;</asp:label>
            <asp:TextBox ID="password"  runat="server" TextMode="Password" CssClass="textbox" BackColor="#FFCC66" ></asp:TextBox>
                
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="password" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="password" ControlToValidate="cpassword" 
            ErrorMessage="Password should match"></asp:CompareValidator>
             </li>
          <li>        
        <asp:label runat="server" Font-Names="Tahoma" CssClass="label" Font-Bold="True" >ConfirmPwd:&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="cpassword" runat="server" TextMode="Password" CssClass="textbox" OnTextChanged="cpassword_TextChanged" BackColor="#FFCC66"  Font-Names="Tahoma"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="cpassword" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
       </li>

       <li>
        
        <asp:label runat="server" Font-Names="Tahoma" CssClass="label" Font-Bold="True" >Contact No:&nbsp;&nbsp;&nbsp;</asp:label>
           <asp:TextBox ID="contactno"  runat="server" ontextchanged="TextBox5_TextChanged" CssClass="textbox" BackColor="#FFCC66"  Font-Names="Tahoma"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="contactno" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        
       </li>
        
        <li>
       <asp:label runat="server" Font-Names="Tahoma" CssClass="label" Font-Bold="True" >Zipcode:&nbsp;&nbsp;&nbsp;</asp:label>
        <asp:TextBox ID="zipcode"  runat="server" CssClass="textbox" BackColor="#FFCC66"  Font-Names="Tahoma"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="zipcode" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="zipcode" ErrorMessage="Enter valid zipcode" 
            ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
        </li>
        <li>
             <asp:Button ID="Register" runat="server" onclick="register_Click" Text="Register as User" BorderStyle="Groove" BorderColor="#CC6600" BackColor="#FFFFCC" Font-Bold="True" CssClass="RegisterAsUser" />
        
        </li>
            </ul>
    </div>
</asp:Content>
