<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginSuccess.aspx.cs" Inherits="MoonEra.LoginSuccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .success-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 50px;
            background-color: #1a1a2e;
            border-radius: 12px;
            box-shadow: 0 0 20px rgba(0, 255, 255, 0.4);
            color: #e0f7fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            text-align: center;
            max-width: 600px;
            margin: 100px auto;
        }

        .success-message {
            font-size: 1.6em;
            font-weight: bold;
            color: #76e3ea;
            margin-bottom: 20px;
        }

        .congratulations-text {
            font-size: 1.2em;
            color: #b0bec5;
            margin-bottom: 30px;
            line-height: 1.6;
        }

        .btn-electric {
            background: linear-gradient(90deg, #00d2ff, #3a7bd5);
            color: white;
            padding: 12px 25px;
            font-size: 1em;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: transform 0.3s ease, background-color 0.3s ease;
            text-transform: uppercase;
            box-shadow: 0 4px 15px rgba(0, 210, 255, 0.6);
        }

        .btn-electric:hover {
            transform: translateY(-3px);
            background: linear-gradient(90deg, #00c6ff, #0072ff);
            box-shadow: 0 6px 20px rgba(0, 210, 255, 0.8);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="success-container">
        <div class="congratulations-text">
            Congratulations 
            <asp:Label ID="lblUsername" runat="server" CssClass="success-message"></asp:Label>, You made it in! Welcome to the MoonEra family!
        </div>
        <asp:Button ID="btnLogOut" runat="server" CssClass="btn-electric" Text="Log Out" OnClick="btnLetMeOut_Click" />
        <br /><br />
        Need to update your information? please click Update:<br /><br />
        <asp:Button ID="btnUpdate" runat="server" CssClass="btn-electric" Text="Update" OnClick="btnUpdate_Click" />
        <br />
        <br />
        Or if you wish to delete your account all together, please click Delete:<br />
        <br />
        <asp:Button ID="btnDelete" runat="server" CssClass="btn-electric" Text="Delete"  OnClick="btnDelete_Click" />
    </div>
</asp:Content>