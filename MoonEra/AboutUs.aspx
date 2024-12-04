<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="MoonEra.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background: linear-gradient(135deg, #2e1b0d, #1a1a3f);
            color: #f8e9d2;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            text-align: center;
            background: linear-gradient(135deg, rgba(255, 69, 0, 0.9), rgba(255, 140, 0, 0.8));
            border-radius: 15px;
            box-shadow: 0 0 30px rgba(255, 105, 180, 0.6), 0 0 60px rgba(255, 140, 0, 0.4);
            color: #ffffff;
        }

        h1 {
            font-size: 3rem;
            color: #ffdf00;
            text-shadow: 0 0 20px #ffdf00, 0 0 40px #ff4500;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.2rem;
            line-height: 1.6;
            margin-bottom: 20px;
            text-shadow: 0 0 8px rgba(255, 255, 255, 0.4), 0 0 15px rgba(255, 69, 0, 0.2);
        }

        .highlight {
            color: #ffdf00;
            font-weight: bold;
        }

        .footer {
            margin-top: 30px;
            font-size: 1rem;
            color: #f8e9d2;
            text-shadow: 0 0 10px rgba(255, 255, 255, 0.2);
        }

        .footer a {
            color: #ff4500;
            text-decoration: none;
            font-weight: bold;
        }

        .footer a:hover {
            text-shadow: 0 0 10px rgba(255, 105, 180, 0.8);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>About MoonEra</h1>
        <p>
            MoonEra is a non-profit organization at the intersection of <span class="highlight">creativity</span> and 
            <span class="highlight">community impact</span>. We are revolutionizing the fashion landscape for good causes. 
            Each year, we produce two exclusive apparel collections designed by local artists, featuring 8 to 14 
            unique styles. Our mission is to encourage individuality while making every purchase contribute to 
            meaningful charities.
        </p>
        <p>
            By choosing MoonEra, you embrace a shopping experience that blends <span class="highlight">personalization</span>, 
            <span class="highlight">community support</span>, and <span class="highlight">charitable giving</span>. Every item you wear 
            represents your values and helps empower local artists while supporting causes that matter. Join us to make a statement 
            and a difference. Together, we can shape a brighter future through creativity and compassion.
        </p>
        <div class="footer">
            Learn more about our mission and collections at 
            <asp:HyperLink ID="MoonEraHP" runat="server" NavigateUrl="~/Default.aspx">moonera.org</asp:HyperLink>
&nbsp;</div>
    </div>
</asp:Content>
