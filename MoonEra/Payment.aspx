<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="MoonEra.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            width: 399px;
        }
        .auto-style12 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style8">
        <strong>Thank you for your kind donation, please fill out your payment information below!<br />
        <br />
        How much would you like to donate?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDonAmount" runat="server"></asp:TextBox>
        <br />
        <br />
        <span class="auto-style12">Payment Information</span><br />
        <table class="auto-style10">
            <tr>
                <td class="auto-style11">Name on card:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtNameC" runat="server" Width="251px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Card Number:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtCardNum" runat="server" Width="254px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Expiration Date (Ex, 10/2028):</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtExp" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">CVV:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtCVV" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Zip-Code:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="btnSubPay" runat="server" OnClick="btnSubPay_Click" Text="Submit Payment" />
        <br />
        <br />
        <br />
        </strong>
    </div>
</asp:Content>
