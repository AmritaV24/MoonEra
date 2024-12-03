<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DeleteSuccess.aspx.cs" Inherits="MoonEra.DeleteSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background: linear-gradient(135deg, #4b1c27, #7d3036);
            color: #f4e3b1;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        h1 {
            font-size: 2.5rem;
            color: #e1af4b;
            text-shadow: 0 0 10px rgba(255, 223, 186, 0.6), 0 0 20px rgba(255, 223, 186, 0.4);
        }

        p {
            font-size: 1.2rem;
            margin: 0.5em 0;
            opacity: 0.8;
        }

        p:last-child {
            font-size: 1.5rem;
            font-style: italic;
            color: #e1af4b;
        }

        .goodbye-icon {
            font-size: 4rem;
            margin-bottom: 1em;
            color: #f4e3b1;
            text-shadow: 0 0 5px rgba(255, 223, 186, 0.6), 0 0 15px rgba(255, 223, 186, 0.4);
        }

        .fade-effect {
            animation: fadeIn 3s ease-in-out;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container fade-effect">
        <div class="goodbye-icon">&#128075;</div>
        <h1>We are so sorry to see you go.</h1>
        <p>We hope you enjoyed MoonEras webpage!</p>
        <p>Goodbye for now,</p>
        <p>...</p>
        <p>Until Next Time! &gt;:-}</p>
    </div>
</asp:Content>
