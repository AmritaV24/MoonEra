﻿<%@ Page Title="Log In" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MoonEra.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            background: radial-gradient(circle, #1a1a3f, #0a0a1a);
            color: #e0e0e0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            text-align: center;
        }

        .container img {
            width: 200px;
            height: auto;
            margin-bottom: 20px;
            animation: glowEffect 5s infinite alternate;
            border-radius: 10px;
            box-shadow: 0 0 20px #ff4500, 0 0 40px #ff69b4;
        }

        h1 {
            font-size: 2.5rem;
            color: #ff69b4;
            text-shadow: 0 0 10px #ff69b4, 0 0 20px #ff4500, 0 0 30px #1e90ff;
        }

        p {
            font-size: 1.2rem;
            margin: 10px 0;
            color: #a6e1fa;
            text-shadow: 0 0 8px #1e90ff, 0 0 16px #00ffff;
        }

        input[type="text"], input[type="password"], input[type="email"] {
            padding: 10px;
            font-size: 1rem;
            border: 2px solid #ff69b4;
            border-radius: 5px;
            background-color: #121212;
            color: #ffffff;
            text-shadow: 0 0 10px #ff69b4;
            box-shadow: 0 0 10px #1e90ff, 0 0 20px #ff4500;
            width: 80%;
            max-width: 500px;
            margin-bottom: 15px;
        }

        input[type="text"]:hover, input[type="password"]:hover, input[type="email"]:hover {
            border-color: #ff4500;
            box-shadow: 0 0 15px #ff4500;
        }

        input[type="text"]:focus, input[type="password"]:focus, input[type="email"]:focus {
            outline: none;
            border-color: #1e90ff;
            box-shadow: 0 0 20px #1e90ff;
        }

        .checkbox {
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 10px 0;
        }

        .checkbox input[type="checkbox"] {
            transform: scale(2);
            margin-right: 10px;
            accent-color: #ff69b4;
        }

        .button {
            padding: 15px 40px;
            font-size: 1.5rem;
            color: #ffffff;
            background: linear-gradient(45deg, #ff69b4, #1e90ff);
            border: 2px solid #ff69b4;
            border-radius: 10px;
            text-shadow: 0 0 10px #ffffff;
            box-shadow: 0 0 15px #1e90ff, 0 0 25px #ff4500;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
            margin: 10px 0;
            width: 80%;
            max-width: 500px;
        }

        .button:hover {
            background: linear-gradient(45deg, #1e90ff, #ff69b4);
            border-color: #ffffff;
            box-shadow: 0 0 25px #1e90ff, 0 0 35px #ff4500;
            transform: scale(1.1);
        }

        .divider {
            margin: 20px 0;
            font-size: 1rem;
            color: #e0e0e0;
        }

        @keyframes glowEffect {
            0% {
                box-shadow: 0 0 20px #ff69b4, 0 0 40px #ff4500;
            }
            100% {
                box-shadow: 0 0 30px #ff4500, 0 0 60px #ff69b4;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <img alt="MoonEra Logo" src="Images/MEraLogo.JPG" />
        <h1>Log In</h1>
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Placeholder="Email Address"></asp:TextBox>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Placeholder="Password"></asp:TextBox>
        <br />
        <asp:Label ID="lblError" runat="server" CssClass="error-message"></asp:Label>
        <div class="checkbox">
            <asp:CheckBox ID="cbShowPassword" runat="server" Text="Show Password" />
        </div>
        <div class="checkbox">
            <asp:CheckBox ID="cbKeepMeSignedIn" runat="server" Text="Keep Me Signed In" />
        </div>
        <td><asp:Button ID="btnLogIn" runat="server" Text="Log In" CssClass="button" OnClick="btnLogIn_Click" /><td>
        <td><asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="button" OnClick="btnClear_Click" /></td>
        <div class="divider">
            --------------------------- Don't have an account? -------------------------
        </div>
        <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" CssClass="button" OnClick="btnSignUp_Click" />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:F24Team8ConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [Email] = @Email" InsertCommand="INSERT INTO [User] ([Email], [Password], [FName], [LName], [YOB], [PhoneNumber], [StreetAddress], [City], [State], [ZipCode], [NameOnCard], [CardNumber], [ExpirationDate], [CVV]) VALUES (@Email, @Password, @FName, @LName, @YOB, @PhoneNumber, @StreetAddress, @City, @State, @ZipCode, @NameOnCard, @CardNumber, @ExpirationDate, @CVV)" ProviderName="<%$ ConnectionStrings:F24Team8ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [User] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [User] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB, [PhoneNumber] = @PhoneNumber, [StreetAddress] = @StreetAddress, [City] = @City, [State] = @State, [ZipCode] = @ZipCode, [NameOnCard] = @NameOnCard, [CardNumber] = @CardNumber, [ExpirationDate] = @ExpirationDate, [CVV] = @CVV WHERE [Email] = @Email">
            <DeleteParameters>
                <asp:Parameter Name="Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter Name="YOB" Type="Int32" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="StreetAddress" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="ZipCode" Type="String" />
                <asp:Parameter Name="NameOnCard" Type="String" />
                <asp:Parameter Name="CardNumber" Type="String" />
                <asp:Parameter Name="ExpirationDate" Type="String" />
                <asp:Parameter Name="CVV" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter Name="Email" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter Name="YOB" Type="Int32" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="StreetAddress" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="ZipCode" Type="String" />
                <asp:Parameter Name="NameOnCard" Type="String" />
                <asp:Parameter Name="CardNumber" Type="String" />
                <asp:Parameter Name="ExpirationDate" Type="String" />
                <asp:Parameter Name="CVV" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </div>

    <script type="text/javascript">
        document.getElementById('<%= cbShowPassword.ClientID %>').addEventListener('change', function () {
            var passwordField = document.getElementById('<%= txtPassword.ClientID %>');
            passwordField.type = this.checked ? 'text' : 'password';
        });
    </script>
</asp:Content>