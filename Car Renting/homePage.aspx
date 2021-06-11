<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="Car_Renting.homePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
            width: 1218px;
            height: 31px;
        }
        .auto-style6 {
            width: 1218px;
        }
        .auto-style12 {
            height: 30px;
            width: 109px;
            text-align: center;
            border:1px solid gray
        }
        
        .auto-style{
            text-align: left;
            height: 23px;
            width: 186px;
            border:1px solid black;
            color:white;
        }
        
      
        .auto-style24 {
            text-align: left;
            padding-left:5px;
            height: 30px;
            width: 186px;
           
            color: white;
        }
      
   
        
              
        .auto-style26 {
            width: 179px;
            text-align: left;
            color: #FFFFFF;
            height: 23px;
        }
        .auto-style27 {
            width: 176px;
            text-align: left;
            color: #FFFFFF;
            height: 23px;
        }
        .auto-style29 {
            width: 177px;
            color: #FFFFFF;
            text-align: left;
        }
        .auto-style31 {
            width: 96px;
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style32 {
            width: 178px;
            text-align: left;
            color: #FFFFFF;
            height: 23px;
        }
        .auto-style33 {
            width: 175px;
            text-align: left;
            color: #FFFFFF;
            height: 23px;
        }
        .auto-style34 {
            width: 180px;
            color: #FFFFFF;
            text-align: left;
        }
        .auto-style11{
            border-bottom:1px dashed black;
        }
        .butonTip{
            text-decoration:none;
            padding:5px;
            color:aquamarine;
            border:1px solid black;
            
        }
        .butonTip:hover{
            color:aqua;
        }
        
              
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style5">
            <div class="auto-style15">
                <div>
                    <table>
                        <tr>
                            <td class="auto-style26" > PLAKA</td>
                            <td class="auto-style27"> MARKA</td>
                            <td class="auto-style32"> MODEL</td>
                            <td class="auto-style33"> ARAÇ DURUMU</td>
                            <td class="auto-style34"> KİRALAMA BAŞLANGIÇ</td>
                            <td class="auto-style29"> KİRALAMA BİTİŞ</td>
                            <td class="auto-style31"> İŞLEM </td>
                        </tr>
                    </table>
            </div>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:DataList ID="DataList1" runat="server" Width="1191px">
                <ItemTemplate>
                    <table class="auto-style11">
                        <tr>
                            <td class="auto-style24">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("plaka") %>'></asp:Label>
                            </td>
                            <td class="auto-style24">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("marka") %>'></asp:Label>
                          
                            </td>
                            <td class="auto-style24">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("model") %>'></asp:Label>
                            </td>
                            <td class="auto-style24">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("durum") %>'></asp:Label>
                            </td>
                            <td class="auto-style24">
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("kiraBas") %>'></asp:Label>
                            </td>
                            <td class="auto-style24">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("kiraBit") %>'></asp:Label>
                            </td>
                            <td class="auto-style12">
                                
                                 
                                <a href="rentStatus.aspx" class="butonTip">Kirala</a>
                            </td>
                           
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
</table>
</asp:Content>