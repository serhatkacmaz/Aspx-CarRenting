<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="Car_Renting.homePage" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script language="JavaScript">

        function pencere() {


            window.open("rentStatus.aspx", "RentaCar", "toolbar = no, location = no, directories = no, status = no, menubar = yes,scrollbars = yes, resizable = no, copyhistory = yes, width = 1200, height = 800")

        }
    </script>

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
            border: 1px solid gray
        }

        .auto-style {
            text-align: left;
            height: 23px;
            width: 186px;
            border: 1px solid black;
            color: white;
        }


        .auto-style24 {
            text-align: left;
            padding-left: 5px;
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
            height: 23px;
        }

        .auto-style31 {
            width: 96px;
            color: #FFFFFF;
            text-align: center;
            height: 23px;
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
            height: 23px;
        }

        .auto-style11 {
            border-bottom: 1px dashed black;
        }

        .butonTip {
            text-decoration: none;
            padding: 5px;
            color: aquamarine;
        }

            .butonTip:hover {
                color: aqua;
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
                                <td class="auto-style26">PLAKA</td>
                                <td class="auto-style27">MARKA</td>
                                <td class="auto-style32">MODEL</td>
                                <td class="auto-style33">ARAÇ DURUMU</td>
                                <td class="auto-style34">KİRALAMA BAŞLANGIÇ</td>
                                <td class="auto-style29">KİRALAMA BİTİŞ</td>
                                <td class="auto-style31">İŞLEM </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:DataList ID="DataList1" runat="server" Width="1191px" 
                    OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
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

                                    <input type="button" name="" value="Kirala" visible='<%# (Eval("durum").ToString()=="Boşta") %>' onclick="pencere(); buttonEvent(); " />
                                    <%--<asp:Button Text="kirala" runat="server" Visible='<%# (Eval("durum").ToString()=="Boşta") %>' OnClick="pencere()" />--%>
                                    <asp:Button Text="teslim al" runat="server" Visible='<%# (Eval("durum").ToString()!="Boşta") %>' />



                                </td>


                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>

            </td>
        </tr>
    </table>
</asp:Content>

