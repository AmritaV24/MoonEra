<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="MoonEra.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #0f0c29, #302b63, #24243e);
            color: #fff;
            margin: 0;
            padding: 0;
        }

        .payment-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: rgba(0, 0, 0, 0.8);
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.5);
        }

        h1 {
            text-align: center;
            font-size: 1.8rem;
            color: #7fdbff;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #7fdbff;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #7fdbff;
            border-radius: 5px;
            background: #1b1b32;
            color: #fff;
        }

        input[type="text"]:focus {
            outline: none;
            border-color: #3e8eeb;
        }

        .btn-submit {
            width: 100%;
            padding: 10px;
            background: linear-gradient(45deg, #1b1b32, #3e8eeb);
            border: none;
            border-radius: 5px;
            color: #fff;
            font-size: 1rem;
            cursor: pointer;
            text-transform: uppercase;
        }

        .btn-submit:hover {
            background: linear-gradient(45deg, #3e8eeb, #7fdbff);
        }

        .auto-style12 {
            text-decoration: underline;
            color: #7fdbff;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="payment-container">
        <h1>Thank you for your kind donation!</h1>
        <p>Please fill out your payment information below.</p>

        <label for="txtDonAmount">How much would you like to donate?</label>
        <asp:TextBox ID="txtDonAmount" runat="server" placeholder="Enter amount"></asp:TextBox>

        <h2 class="auto-style12">Payment Information</h2>

        <label for="txtNameC">Name on Card</label>
        <asp:TextBox ID="txtNameC" runat="server" placeholder="John Doe"></asp:TextBox>

        <label for="txtCardNum">Card Number</label>
        <asp:TextBox ID="txtCardNum" runat="server" placeholder="1234 5678 9012 3456"></asp:TextBox>

        <label for="txtExp">Expiration Date (MM/YYYY)</label>
        <asp:TextBox ID="txtExp" runat="server" placeholder="MM/YYYY"></asp:TextBox>

        <label for="txtCVV">CVV</label>
        <asp:TextBox ID="txtCVV" runat="server" placeholder="123"></asp:TextBox>

        <label for="txtZip">Zip-Code</label>
        <asp:TextBox ID="txtZip" runat="server" placeholder="12345"></asp:TextBox>

        <asp:Button ID="btnSubPay" runat="server" OnClick="btnSubPay_Click" Text="Submit Payment" CssClass="btn-submit" />
    </div>
</asp:Content>
