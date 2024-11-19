<%@ Page Title="Welcome to MoonEra" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MoonEra.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            background: linear-gradient(135deg, #1c1c3c, #0d0d1a);
            color: #e0e0e0;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        .welcome-container {
            text-align: center;
            margin-top: 100px;
            animation: fadeIn 2s ease-in-out;
        }

        .welcome-text {
            font-size: 2.5rem;
            color: #00ffff;
            text-shadow: 0 0 10px #00ffff, 0 0 20px #ff66ff;
            margin-bottom: 20px;
        }

        .tagline {
            font-size: 1.5rem;
            color: #ff66ff;
            text-shadow: 0 0 10px #ff66ff, 0 0 20px #00ffff;
            margin-top: 20px;
        }

        .auto-style10 {
            width: 300px;
            height: auto;
            border: 2px solid #00ffff;
            border-radius: 15px;
            box-shadow: 0 0 20px #00ffff, 0 0 50px #ff66ff;
            transition: transform 0.3s ease-in-out;
        }

        .auto-style10:hover {
            transform: scale(1.1);
            box-shadow: 0 0 30px #ff66ff, 0 0 60px #00ffff;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="welcome-container">
        <p class="welcome-text">Welcome To</p>
        <p>
            <img alt="Moon Era Default Logo" class="auto-style10" longdesc="https://localhost:44364/Images/MEraLogo.JPG" src="Images/MEraLogo.JPG" />
        </p>
        <p class="tagline">Wear the Moon. Save the Earth.</p>
    </div>
</asp:Content>
