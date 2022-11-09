﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="_111_1QZ3.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div repeatlayout="Flow">
             <h1>保單電訪紀錄</h1><br />
            紀錄編號：<asp:TextBox ID="tb_Num" runat="server"></asp:TextBox><br />
            聯絡方式：
            <asp:RadioButtonList ID="rbl_Phone" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" AutoPostBack="True" OnSelectedIndexChanged="rbl_Phone_SelectedIndexChanged">
                <asp:ListItem Selected="True">手機</asp:ListItem>
                <asp:ListItem>市話</asp:ListItem>
                <asp:ListItem>無</asp:ListItem>
            </asp:RadioButtonList><br />
            <asp:TextBox ID="txt_Phone" runat="server" AutoPostBack="True"></asp:TextBox><br /><br / >
            顯示與區域：<asp:DropDownList ID="dpl_City" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dpl_City_SelectedIndexChanged"></asp:DropDownList>
            <asp:DropDownList ID="dpl_Area" runat="server" Height="17px"></asp:DropDownList><br />
            <asp:Button ID="btn_Submit" runat="server" Text="送出" Width="80px" PostBackUrl="sub.aspx" />
        </div>
    </form>
</body>
</html>
