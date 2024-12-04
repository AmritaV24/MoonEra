<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Charities.aspx.cs" Inherits="MoonEra.Charities" %>
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
            background: linear-gradient(135deg, rgba(255, 69, 0, 0.9), rgba(0, 191, 255, 0.8));
            border-radius: 15px;
            box-shadow: 0 0 30px rgba(255, 105, 180, 0.6), 0 0 60px rgba(0, 191, 255, 0.4);
            color: #ffffff;
        }

        h1 {
            font-size: 3rem;
            color: #ffdf00;
            text-shadow: 0 0 20px #ffdf00, 0 0 40px #00ffff;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.2rem;
            line-height: 1.6;
            margin-bottom: 20px;
            text-shadow: 0 0 8px rgba(255, 255, 255, 0.4), 0 0 15px rgba(0, 191, 255, 0.2);
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
            color: #00ffff;
            text-decoration: none;
            font-weight: bold;
        }

        .footer a:hover {
            text-shadow: 0 0 10px rgba(255, 105, 180, 0.8);
        }

        img {
            width: 300px;
            height: auto;
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
        <h1>Welcome to MoonEra Charities</h1>
        <p>
            Our unique <span class="highlight">preorder model</span> aligns production with demand, reducing waste and maximizing satisfaction. At the end of each year, we host vibrant fundraising events with local food trucks, live bands, and artist showcases. Joining MoonEra is about more than fashion; it’s about being part of a <span class="highlight">movement for positive change</span>.
        </p>
        <p>
            Each collection supports a different charity. This year’s collection proudly backs <span class="highlight">Make-A-Wish</span>, ensuring every purchase contributes to bringing dreams to life for those in need.
        </p>
        <p>
            Together, let’s transform the world—one piece of apparel at a time.
        </p>
        <img src="Images/MEraLogo.JPG" alt="MoonEra Logo" />
        <div class="footer">
            Learn more about our initiatives at 
            <asp:HyperLink ID="MEHP" runat="server" NavigateUrl="~/Default.aspx">moonera.org</asp:HyperLink>
            <br />
&nbsp;</div>
    </div>
</asp:Content>