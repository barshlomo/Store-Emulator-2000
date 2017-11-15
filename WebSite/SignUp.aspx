<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:absolute; top:5%; left:5%; height:50%; width:50%; margin-left:20%; background-color:rgba(255, 255, 255, 0.75)">
        <div style="text-align: center; color: black; font-family: Tahoma; margin-top: 10%; font-size: x-large">
            Sign Up
        </div>

        <div style="text-align: center; margin-top:3%;">
            <asp:TextBox ID="UserNameTxt" runat="server" placeholder="Enter your user name"  ></asp:TextBox>
        </div>
        <div style="text-align: center; margin-top:3%">
            <asp:TextBox ID="PasswordTxt" runat="server" placeholder="Enter your password" ></asp:TextBox>
        </div>
        <div style="text-align: center; margin-top:3%;">
            <asp:TextBox ID="EmailTxt" runat="server" placeholder="Enter your user E-mail"  ></asp:TextBox>
        </div>
        <div style="text-align: center; margin-top:3%">
            <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
        </div>
    </div>
    </asp:Content> 

