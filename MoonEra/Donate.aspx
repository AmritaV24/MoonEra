<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Donate.aspx.cs" Inherits="MoonEra.Donate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="Content/Styles.css" />
    <style>
        body {
            font-family: 'Orbitron', sans-serif;
            background: linear-gradient(135deg, #0f0c29, #302b63, #24243e);
            color: #fff;
            margin: 0;
            padding: 0;
        }

        .container {
            position: relative;
            text-align: center;
            margin-top: 50px;
        }
        h2 {
            color: #00e5ff;
            text-shadow: 0 0 10px #00e5ff, 0 0 20px #007a99, 0 0 30px #003e4f;
        }

        p {
            font-size: 1.2rem;
            color: #fff;
        }

        .donate-button {
            padding: 15px 30px;
            font-size: 1.2rem;
            color: #fff;
            background: linear-gradient(45deg, #ff1493, #00e5ff);
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-weight: bold;
            text-transform: uppercase;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 0 20px rgba(255, 20, 147, 0.6), 0 0 30px rgba(0, 229, 255, 0.6);
        }

        .donate-button:hover {
            transform: scale(1.1);
            box-shadow: 0 0 30px rgba(255, 20, 147, 0.8), 0 0 40px rgba(0, 229, 255, 0.8);
        }

        .highlight-box {
            background-color: rgba(220, 240, 251, 0.8);
            padding: 20px;
            margin: 20px auto;
            max-width: 800px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 87, 184, 0.3);
        }
         .highlight-box h2 {
            color: #0057b8;
            font-size: 1.875rem;
            margin-bottom: 1rem;
        }

        .social-media {
            margin-top: 30px;
            text-align: center;
        }

        .social-media img {
            width: 50px;
            height: 50px;
            margin: 0 10px;
            filter: drop-shadow(0 0 10px #fff);
        }

        .social-media span {
            font-size: 1.2rem;
            color: #7fdbff;
        }

        .social-media td {
            color: #7fdbff;
            font-size: 1.2rem;
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

        .auto-style14 {
            color: rgb(0, 255, 255);
        }
        .auto-style15 {
            color: rgb(255, 255, 255);
        }
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="splatter"></div>
        <div class="text">
            <div class="field__item" style="box-sizing: border-box; color: rgb(0, 0, 0); font-family: lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                <div class="paragraph paragraph--type--rich-text paragraph--view-mode--default" style="box-sizing: border-box; padding-right: 0px; padding-left: 0px; margin-bottom: 2.5rem;">
                    <div class="clearfix text-formatted field field--name-field-rich-text field--type-text-long field--label-hidden field__item" style="box-sizing: border-box; max-width: 920px; margin: 0px auto; padding: 0px;">
                        <h2 style="box-sizing: border-box; font-size: 1.875rem; line-height: 1.4; margin: 2.5rem 0px 1.75rem; font-family: droid-serif, serif; font-style: normal; font-weight: 400; color: rgb(0, 87, 184);"><span class="auto-style14">A wish experience can be a game-changer for a child with a critical illness.</span>&nbsp;</h2>
                        <p class="auto-style15" style="box-sizing: border-box; font-family: lato, sans-serif; font-style: normal; font-weight: 400; font-size: 1.25rem; line-height: 2.125rem;">
                            This one belief guides us in everything we do at Make-A-Wish. It inspires us to grant&nbsp;life-changing&nbsp;wishes&nbsp;for children going through so much. It compels us to be creative in exceeding the expectations of every wish kid. It drives us to make our donated resources go as far as possible.&nbsp;Most of all, it&#39;s the founding principle of our vision to grant the wish of every eligible child.</p>
                    </div>
                </div>
            </div>
            <div class="field__item" style="box-sizing: border-box; color: rgb(0, 0, 0); font-family: lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                <div class="blue stars text-align-center paragraph paragraph--type--full-width-copy-icon paragraph--view-mode--default" style="box-sizing: border-box; text-align: center; background-color: rgb(220, 240, 251);">
                    <div class="inner-max-wrapper" style="box-sizing: border-box; max-width: 1280px; margin: 0px auto; padding-top: 5rem; padding-bottom: 5rem; position: relative;">
                        <div class="wand" style="box-sizing: border-box; position: relative; z-index: 1;">
                        </div>
                        <h2 class="field field--name-field-headline field--type-text field--label-hidden field__item" style="box-sizing: border-box; font-size: 2.25rem; line-height: 1.3334; margin: 0px 0px 2.4375rem; font-family: droid-serif, serif; font-style: normal; font-weight: 400; color: rgb(0, 87, 184); padding-right: 6.75rem; padding-left: 6.75rem; position: relative; z-index: 1;"><em style="box-sizing: border-box;">Together, we create life-changing wishes for children with critical illnesses.</em></h2>
                    </div>
                </div>
            </div>
            <div class="field__item" style="box-sizing: border-box; color: rgb(0, 0, 0); font-family: lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                <div class="paragraph paragraph--type--rich-text paragraph--view-mode--default" style="box-sizing: border-box; padding-right: 0px; padding-left: 0px; margin-bottom: 2.5rem;">
                    <div class="clearfix text-formatted field field--name-field-rich-text field--type-text-long field--label-hidden field__item" style="box-sizing: border-box; max-width: 920px; margin: 0px auto; padding: 0px;">
                        <p class="auto-style15" style="box-sizing: border-box; font-family: lato, sans-serif; font-style: normal; font-weight: 400; font-size: 1.25rem; line-height: 2.125rem;">
                            
                            Wishes are more than just a nice thing. And they are far more than gifts, or singular events in time. Wishes impact everyone involved—wish kids, volunteers, donors, sponsors, medical professionals and communities. For wish kids, just the act of making their wish come true can give them the courage to comply with their medical treatments. Parents might finally feel like they can be optimistic. And still others might realize all they have to offer the world through volunteer work or philanthropy.&nbsp;</p>
                    </div>
                </div>
            </div>
             <p>If you wish to make a donation, please click below!</p>
            <p>&nbsp;</p>

        <asp:Button ID="btnDonate" runat="server" OnClick="btnDonate_Click" Text="Donate Here!" CssClass="donate-button" />

            <br />

        <div class="social-media">
            <p>Stay connected through our social media!</p>
            <br />
            <table align="center">
                <tr>
                    <td><img alt="Instagram" src="Images/InstagramLogo.JPG" /></td>
                    <td>@MoonEra</td>
                </tr>
            </table>
            <br />
        </div>
    </div>
</asp:Content>
