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
        .auto-style14 {
            color: rgb(0, 255, 255);
        }
        .auto-style15 {
            color: rgb(255, 255, 255);
        }
        .auto-style16 {
            font-size: medium;
            color: #FFFFFF;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="splatter"></div>
        <div class="text">
            <br /><br /><br />
            <div class="field__item" style="box-sizing: border-box; color: rgb(0, 0, 0); font-family: lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                <div class="paragraph paragraph--type--rich-text paragraph--view-mode--default" style="box-sizing: border-box; padding-right: 0px; padding-left: 0px; margin-bottom: 2.5rem;">
                    <div class="clearfix text-formatted field field--name-field-rich-text field--type-text-long field--label-hidden field__item" style="box-sizing: border-box; max-width: 920px; margin: 0px auto; padding: 0px;">
                        <h2 style="box-sizing: border-box; font-size: 1.875rem; line-height: 1.4; margin: 2.5rem 0px 1.75rem; font-family: droid-serif, serif; font-style: normal; font-weight: 400; color: rgb(0, 87, 184);"><span class="auto-style14">A wish experience can be a game-changer for a child with a critical illness.</span>&nbsp;</h2>
                        <p class="auto-style15" style="box-sizing: border-box; font-family: lato, sans-serif; font-style: normal; font-weight: 400; font-size: 1.25rem; line-height: 2.125rem;">
                            This one belief guides us in everything we do at Make-A-Wish. It inspires us to grant&nbsp;life-changing&nbsp;wishes&nbsp;for children going through so much. It compels us to be creative in exceeding the expectations of every wish kid. It drives us to make our donated resources go as far as possible.&nbsp;Most of all, it&#39;s the founding principle of our vision to grant the wish of every eligible child.</p>
                        <p style="box-sizing: border-box; margin: 1.75rem 0px; font-family: lato, sans-serif; font-style: normal; font-weight: 400; font-size: 1.25rem; line-height: 2.125rem; color: rgb(0, 0, 0);">
                            &nbsp;</p>
                    </div>
                </div>
            </div>
            <div class="field__item" style="box-sizing: border-box; color: rgb(0, 0, 0); font-family: lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                <div class="blue stars text-align-center paragraph paragraph--type--full-width-copy-icon paragraph--view-mode--default" style="box-sizing: border-box; text-align: center; background-color: rgb(220, 240, 251);">
                    <div class="inner-max-wrapper" style="box-sizing: border-box; max-width: 1280px; margin: 0px auto; padding-top: 5rem; padding-bottom: 5rem; position: relative;">
                        <div class="wand" style="box-sizing: border-box; position: relative; z-index: 1;">
                            <div class="field field--name-field-related-icon field--type-entity-reference field--label-hidden field__item" style="box-sizing: border-box;">
                            </div>
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
            <p>
                <span class="auto-style16">If you wish to make a donationn please click Below!</span></p>
            <p>
                <asp:Button ID="btnDonate" runat="server" OnClick="btnDonate_Click" Text="Donate Here!" />
            <br />
            </p>
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
