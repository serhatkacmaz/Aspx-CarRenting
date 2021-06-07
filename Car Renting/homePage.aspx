<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="Car_Renting.homePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>
        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Ser") %>'></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
