<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="rentStatus.aspx.cs" Inherits="Car_Renting.rentStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .tdkonum {
            width: 900px;
            border-bottom: 1px solid black;
        }

        .tdTextKonum {
            Width: 300px;
            font-size: x-large;
        }

        .auto-style9 {
            font-size: xx-large;
            height: 40px;
            text-align: center;
            width: 1200px;
        }

        .auto-style11 {
            width: 1200px;
            border-bottom: 1px dashed black;
            font-size: x-large;
            text-align: center;
        }

        .auto-style12 {
            width: 1200px;
            text-align: center;
            border-bottom: 1px dashed black;
        }

        .auto-style13 {
            width: 230px;
            font-size: x-large;
        }

        .auto-style14 {
            font-size: xx-large;
        }

        .auto-style15 {
            height: 44px;
            border-bottom: 1px dashed black;
        }

        .auto-style17 {
            height: 63px;
            border-bottom: 1px dashed black;
        }

        .auto-style18 {
            font-size: x-large;
        }
        #Button1 {
          height: 33px;
          width: 99px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table>
        <tr>
            <td class="auto-style11"><strong><em><span class="auto-style18">Araç Plakası:</span></em></strong><span
                class="auto-style18"> </span></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" class="tdTextKonum"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong><em><span class="auto-style18">Araç Markası:</span></em></strong><span
                class="auto-style18"> </span></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" class="tdTextKonum"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style11"><strong><em><span class="auto-style18">Araç Modeli:</span></em></strong><span
                class="auto-style18"> </span></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" class="tdTextKonum"></asp:TextBox></td>
        </tr>
    </table>
    <table>


        <tr>
            <td class="auto-style9"><em><strong>↓ Müşteri Seçiniz ↓</strong></em></td>


        </tr>
        <tr>
            <td class="auto-style12">
                <br />
                <input type="text" name="name" placeholder="Tc Giriniz" class="auto-style13" /><br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="text-align: center"><span class="auto-style14"><strong><em>Müşteri Adı:</em></strong></span>

                <input type="text" name="name1" value="" class="auto-style13" size="20" />&nbsp;
                <span><strong><em style="font-size: xx-large">Müşteri Soyad:</em></strong></span>

                <input type="text" name="name2" value="" class="auto-style13" size="20" /><br />
            </td>



        </tr>
        <tr>
            <td style="text-align: center" class="auto-style17">
                <span class="auto-style14"><strong><em>Tel No:</em></strong></span><input type="text" name="name" value=""
                    style="font-size: x-large; text-align: center" /><br />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <span class="auto-style14"><strong><em>↓ Adres ↓<br />
                </em></strong></span>
                <textarea style="width: 350px; height: 150px"></textarea></td>
        </tr>
        <td style="text-align: center">
            <br />
            <input id="Button1" type="button" value="Kaydet" /></td></table>







</asp:Content>
