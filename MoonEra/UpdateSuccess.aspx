<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateSuccess.aspx.cs" Inherits="MoonEra.UpdateSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-color: #3b2e1d; /* Warm dark brown background */
            color: #fff;
            font-family: 'Orbitron', sans-serif;
            margin: 0;
            padding: 0;
        }

        .gold-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            text-align: center;
            color: #ffd700; /* Gold text */
        }

        .glow-text {
            font-size: 3em;
            font-weight: bold;
            color: #ffd700; /* Gold text */
            text-shadow: 0 0 10px #ffd700, 0 0 20px #ffbf00;
            animation: pulseGlow 2s infinite alternate;
        }

        .subtext {
            font-size: 1.5em;
            color: #ffbf00; /* Light gold */
            text-shadow: 0 0 10px #ffbf00, 0 0 20px #ff8000;
            margin-top: 20px;
        }

        .gold-button {
            margin-top: 30px;
            padding: 15px 30px;
            font-size: 1.2em;
            font-weight: bold;
            color: #ffffff;
            background: linear-gradient(45deg, #ffcc00, #ff9900);
            border: none;
            border-radius: 10px;
            cursor: pointer;
            box-shadow: 0 0 10px #ffcc00, 0 0 20px #ff9900;
            text-transform: uppercase;
        }

        .gold-button:hover {
            transform: scale(1.1);
            box-shadow: 0 0 20px #ffcc00, 0 0 40px #ff9900;
        }

        @keyframes pulseGlow {
            from {
                text-shadow: 0 0 10px #ffd700, 0 0 20px #ffbf00;
            }
            to {
                text-shadow: 0 0 20px #ffbf00, 0 0 40px #ff8000;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="gold-container">
        <div class="glow-text">Congratulations!</div>
        <div class="subtext">Your information has been updated successfully!</div>
        <asp:Button ID="btnLogMeIn" runat="server" Text="Log Me In" CssClass="gold-button" OnClick="btnLogMeIn_Click" />
    </div>
</asp:Content>
