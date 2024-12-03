<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PaymentSuccess.aspx.cs" Inherits="MoonEra.PaymentSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Container Styling */
        .success-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 40px;
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364); /* Cool sci-fi gradient */
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 4px 30px rgba(0, 255, 255, 0.3), 0 0 50px rgba(255, 20, 147, 0.4); /* Glowy effect */
            font-family: 'Orbitron', sans-serif; /* Sci-fi font */
            color: #ffffff;
        }

        /* Congratulations Text Styling */
        .congratulations-text {
            font-size: 1.8em;
            color: #ffcc00; /* Warm glowing color */
            text-shadow: 0 0 10px #ffcc00, 0 0 20px #ff6600, 0 0 30px #ff3300; /* Glowing shadow */
            margin-bottom: 20px;
            line-height: 1.5;
        }

        /* Success Message Styling */
        .success-message {
            color: #00e5ff; /* Cool electric color */
            font-weight: bold;
            font-size: 1.5em;
            margin-left: 5px;
            display: inline-block;
            text-shadow: 0 0 10px #00e5ff, 0 0 20px #00b3cc, 0 0 30px #007a99; /* Cool glowy effect */
        }

        /* Log In Button Styling */
        .btn-login {
            padding: 12px 25px;
            font-size: 1em;
            color: #ffffff;
            background: linear-gradient(45deg, #ff1493, #00e5ff); /* Vibrant gradient */
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-weight: bold;
            text-transform: uppercase;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 0 20px rgba(255, 20, 147, 0.6), 0 0 30px rgba(0, 229, 255, 0.6); /* Glowy button shadow */
            margin-top: 20px;
        }

        .btn-login:hover {
            transform: scale(1.1);
            box-shadow: 0 0 30px rgba(255, 20, 147, 0.8), 0 0 40px rgba(0, 229, 255, 0.8);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="success-container">
        <div class="congratulations-text">
            Thank You for you Contribution, 
            <asp:Label ID="lblUsername" runat="server" CssClass="success-message"></asp:Label>!<br />
            Your payment has been successful.<br />
    </div>
</asp:Content>
