<%@ Page Title=""  Culture="en-US" UICulture="auto:en-US" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Setting.aspx.cs" Inherits="Setting"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .drop{
            color: #fff;
font-size: 20px;
padding: 5px 10px;
border-radius: 5px;
background-color: #cc2a41;
font-weight: bold;
float:left;
margin:5px;
position:relative;
left:150px;
top:3px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="masdivcph" Runat="Server">
    <div style="float:left;overflow:hidden;background-color:black;width:100%;height:100px;">
        <div style="background-color:white;width:50%;height:50px;float:left;position:relative;left:300px;top:20px;">
            <h2 style="float:left;position:relative;top:-10px;left:150px">Select Theme</h2>
            <asp:DropDownList ID="DropDownList1" class="drop" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Theme1</asp:ListItem>
                <asp:ListItem>Theme2</asp:ListItem>
            </asp:DropDownList>
            </div>
        </div>
</asp:Content>

