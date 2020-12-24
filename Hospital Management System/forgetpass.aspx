<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="forgetpass.aspx.cs" Inherits="forgetpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="masdivcph" Runat="Server">
    <div style="width:100%;height:170px;float:left;overflow:hidden;background-color:black;color:white;">
        <h2 style="padding-left:20px;">Enter your Email</h2>
        <asp:TextBox ID="TextBox1" runat="server" type="email" Width="30%" ></asp:TextBox><br/><br/>
        <div style="float:left;margin-left:20px;">
        <asp:Button ID="Button1" runat="server" Text="Get Your Password" Class="btn btn-info btn-md" OnClick="Button1_Click"/>
            </div>
            <br/>
        <asp:Label ID="Label1" runat="server"></asp:Label>

        </div>
</asp:Content>

