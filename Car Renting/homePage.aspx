<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="Car_Renting.homePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
            width: 1218px;
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
            border:1px solid gray;
            color:white;
        }
        
      
        .auto-style24 {
            text-align: left;
            height: 30px;
            width: 186px;
            border: 1px solid gray;
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
            width: 80px;
            color: #FFFFFF;
            text-align: left;
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
            border-bottom:1px dashed gray;
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
                            <td class="auto-style26" > Plaka</td>
                            <td class="auto-style27"> Marka</td>
                            <td class="auto-style32"> Model</td>
                            <td class="auto-style33"> Araç Durumu</td>
                            <td class="auto-style34"> Kiralama Başlangıç</td>
                            <td class="auto-style29"> Kiralama Bitiş</td>
                            <td class="auto-style31"> İşlem </td>
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
  
                                
                                <asp:Button ID="Button1" runat="server" Text="Kirala" />
                            </td>
                           
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
</table>
</asp:Content>