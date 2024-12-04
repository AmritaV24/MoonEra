<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Donate.aspx.cs" Inherits="MoonEra.Donate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="Content/Styles.css" />
    <style>
        body {
            background: url('http://localhost:44364/Images/Capture.JPG') no-repeat center center fixed;
            background-size: cover;
            color: white;
            font-family: 'Arial', sans-serif;
        }

        .container {
            position: relative;
            text-align: center;
            margin-top: 50px;
        }

        .text {
            position: relative;
            z-index: 10;
            font-size: 2em;
            color: #00ffff;
        }

        .splatter {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 200px;
            height: 200px;
            background: radial-gradient(circle, rgba(128, 0, 128, 0.6) 0%, rgba(128, 0, 128, 0) 70%);
            border-radius: 50%;
            animation: splatterAnimation 2s infinite ease-in-out;
        }

        @keyframes splatterAnimation {
            0% {
                transform: translate(-50%, -50%) scale(0.5);
                opacity: 1;
            }
            50% {
                transform: translate(-50%, -50%) scale(1.2);
                opacity: 0.7;
            }
            100% {
                transform: translate(-50%, -50%) scale(0.5);
                opacity: 0;
            }
        }

        .auto-style10 {
            position: absolute;
            top: 7000%;
            left: 36%;
            transform: translate(-50%, -50%);
            width: 553px;
            height: 457px;
            border-radius: 50%;
            animation: splatterAnimation 2s infinite ease-in-out;
        }

        .auto-style11 {
            width: 50%;
            box-shadow: 0 0 20px purple;
            border-radius: 10px;
            padding: 10px;
            background: rgba(0, 0, 0, 0.5);
        }

        .auto-style12 {
            width: 138px;
            height: 130px;
        }

        .auto-style13 {
            width: 133px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="splatter"></div>
        <div class="text">
            <br /><br /><br />
            New Donation Page coming soon!
            <br />
            <br />
            Sorry for the inconvenince :(
            <br />
        </div>
    </div>
    
    <p style="text-align: center; color: white;">
        Stay connected through our social media!
    </p>

    <table align="center" class="auto-style11">
        <tr>
            <td class="auto-style13">
                <img alt="Instagram" class="auto-style12" src="Images/InstagramLogo.JPG" />
            </td>
            <td>@MoonEra</td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>
