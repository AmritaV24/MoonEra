<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="MoonEra.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background: linear-gradient(135deg, #00274d, #003366);
            color: #e0f7fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            text-align: center;
            background: linear-gradient(135deg, rgba(0, 128, 255, 0.9), rgba(0, 204, 204, 0.8));
            border-radius: 15px;
            box-shadow: 0 0 30px rgba(0, 191, 255, 0.6), 0 0 60px rgba(0, 204, 204, 0.4);
            color: #ffffff;
        }

        h1 {
            font-size: 3rem;
            color: #00ffff;
            text-shadow: 0 0 20px #00ffff, 0 0 40px #004d80;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.2rem;
            line-height: 1.6;
            margin-bottom: 20px;
            text-shadow: 0 0 8px rgba(255, 255, 255, 0.4), 0 0 15px rgba(0, 191, 255, 0.2);
        }

        a {
            color: #00ffff;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-shadow: 0 0 10px rgba(255, 105, 180, 0.8);
        }

        .contact-info {
            font-size: 1.2rem;
            margin: 20px 0;
        }

        .highlight {
            color: #00e5ff;
            font-weight: bold;
        }

        .footer {
            margin-top: 30px;
            font-size: 1rem;
            color: #e0f7fa;
            text-shadow: 0 0 10px rgba(255, 255, 255, 0.2);
        }

        .footer a {
            color: #00ffff;
            text-decoration: none;
            font-weight: bold;
        }

        .footer a:hover {
            text-shadow: 0 0 10px rgba(0, 204, 204, 0.8);
        }

        img {
            width: 100px;
            height: auto;
            margin-top: 20px;
            border: 2px solid #00ffff;
            border-radius: 15px;
            box-shadow: 0 0 20px #00ffff, 0 0 50px #ff66ff;
            transition: transform 0.3s ease-in-out;
        }

        img:hover {
            transform: scale(1.1);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Contact Us</h1>
        <p class="contact-info">
            Phone: <span class="highlight">(131) 481-1989</span>
        </p>
        <p class="contact-info">
            Email: <a href="mailto:moonera@gmail.com">moonera@gmail.com</a>
        </p>
        <p class="contact-info">
            Follow us on Social Media: <span class="highlight">@MoonEra</span>
        </p>
        <p>
            Have a question or want to collaborate? We’d love to hear from you! Feel free to reach out via any of the above channels or visit our headquarters for a personal touch.
        </p>
        <img src="Images/ContactIcon.png" alt="Contact Icon" />
        <div class="footer">
            Learn more about MoonEra and our mission at 
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">moonera.org</asp:HyperLink>
            <br />
&nbsp;</div>
    </div>
</asp:Content>
