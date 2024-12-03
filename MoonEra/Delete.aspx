<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="MoonEra.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style>
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
            height: 100vh;
            text-align: center;
            animation: glowEffect 5s infinite alternate;
        }

        h1 {
            font-size: 2.5rem;
            color: #ff69b4;
            text-shadow: 0 0 10px #ff69b4, 0 0 20px #ff4500, 0 0 30px #1e90ff;
        }

        p {
            font-size: 1.2rem;
            margin: 1em 0;
            color: #a6e1fa;
            text-shadow: 0 0 8px #1e90ff, 0 0 16px #00ffff;
        }

        input[type="text"] {
            padding: 10px;
            font-size: 1rem;
            border: 2px solid #ff69b4;
            border-radius: 5px;
            background-color: #121212;
            color: #ffffff;
            text-shadow: 0 0 10px #ff69b4;
            box-shadow: 0 0 10px #1e90ff, 0 0 20px #ff4500;
        }

        input[type="text"]:focus {
            outline: none;
            border-color: #1e90ff;
            box-shadow: 0 0 20px #1e90ff;
        }

        .button {
            padding: 24px 60px; /* Increased size for double the current size */
            font-size: 3rem; /* Adjusted font size for a larger look */
            color: #ffffff;
            background: linear-gradient(45deg, #ff69b4, #1e90ff);
            border: 2px solid #ff69b4;
            border-radius: 10px;
            text-shadow: 0 0 10px #ffffff;
            box-shadow: 0 0 15px #1e90ff, 0 0 25px #ff4500;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
        }

        .button:hover {
            background: linear-gradient(45deg, #1e90ff, #ff69b4);
            border-color: #ffffff;
            box-shadow: 0 0 25px #1e90ff, 0 0 35px #ff4500;
            transform: scale(1.2);
        }

        @keyframes glowEffect {
            0% {
                background-color: #1a1a3f;
            }
            100% {
                background-color: #0a0a1a;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Delete Your Account</h1>
        <p>To delete your account, simply enter your email address and press the &quot;Delete My Account&quot; button.</p>
        <asp:TextBox ID="txtEmail" runat="server" Placeholder="Enter your email address"></asp:TextBox>
        <p></p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:F24Team8ConnectionString %>" DeleteCommand="DELETE FROM [Login] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Login] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" ProviderName="<%$ ConnectionStrings:F24Team8ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Login] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Login] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @Email">
            <DeleteParameters>
                <asp:Parameter Name="Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter Name="YOB" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter Name="Email" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter Name="YOB" Type="Int32" />
                <asp:Parameter Name="Email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="btnDelete" 
            runat="server" 
            Text="Delete My Account" 
            CssClass="button" 
            OnClick="btnDelete_Click" />
        <br />
            </div>
</asp:Content>
