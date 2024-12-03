<%@ Page Title="Update Information" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="MoonEra.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            font-family: 'Orbitron', sans-serif;
            background-color: #0d0f18;
            color: #00e1ff;
            font-size: 1.1em; /* Increased by 10% */
        }

        .sci-fi-table {
            width: 100%;
            border-spacing: 0;
            background: rgba(0, 0, 0, 0.5);
            border-radius: 8px;
            box-shadow: 0 0 15px #00e1ff;
            font-size: 1.1em; /* Increased by 10% */
        }

        .sci-fi-table td {
            padding: 12px;
            border-bottom: 1px solid #0d698b;
        }

        .glow-text {
            color: #ffffff;
            text-shadow: 0 0 7px #00e1ff, 0 0 12px #00e1ff, 0 0 25px #007bff;
            font-size: 1.1em; /* Increased by 10% */
        }

        .glow-input {
            background-color: transparent;
            color: #00e1ff;
            border: 4px solid #0d698b;
            padding: 16px;
            border-radius: 4px;
            box-shadow: 0 0 10px #00e1ff;
            width: calc(100% - 20px);
            font-size: 1.1em; /* Increased by 10% */
        }

        .sci-fi-button {
            background: linear-gradient(90deg, #00e1ff, #007bff);
            color: #ffffff;
            border: none;
            padding: 15px 25px;
            cursor: pointer;
            font-size: 1.1rem; /* Increased by 10% */
            transition: background 0.3s;
            border-radius: 5px;
            box-shadow: 0 0 10px #00e1ff;
        }

        .sci-fi-button:hover {
            background: linear-gradient(90deg, #007bff, #00e1ff);
        }
        .login {
            font-size: 1.5rem;
            color: #ff69b4;
            text-shadow: 0 0 10px #ff69b4, 0 0 20px #ff4500, 0 0 30px #1e90ff;
        }

         .checkbox {
            display: flex;
            //align-items: left;
            //justify-content: center;
            margin: 15px 0;
         }

        .checkbox input[type="checkbox"] {
            transform: scale(2);
            margin-right: 10px;
            accent-color: #ff69b4;
        }
        .lastchild {
            font-size: 1.5rem;
            font-style: italic;
            color: #e1af4b;
        }

        .auto-style10 {
            width: 136px;
        }
        .auto-style11 {
            width: 136px;
            text-align: left;
        }
        .auto-style13 {
            font-size: 1.5rem;
            color: #ff69b4;
            text-shadow: 0 0 10px #ff69b4, 0 0 20px #ff4500, 0 0 30px #1e90ff;
            text-align: center;
        }
        .auto-style14 {
            font-size: 1.5rem;
            color: #ff69b4;
            text-shadow: 0 0 10px #ff69b4, 0 0 20px #ff4500, 0 0 30px #1e90ff;
            text-align: left;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style13"><strong>Edit Account:</strong></p>
    <p class="auto-style13">Select the box for the information you wish to update.</p>
    <p class="glow-text">&nbsp;</p>
    <table class="sci-fi-table">
        <tr>
            <td class="glow-text">Update?</td>
            <td class="auto-style14"><strong>Current Information</strong></td>
            <td><strong><asp:Label ID="lblNewValue" runat="server" Text="New Value" CssClass="glow-text"></asp:Label></strong></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="glow-text">Email: <asp:Label ID="lblEmail" runat="server"></asp:Label></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"><asp:CheckBox ID="cbPassword" runat="server" OnCheckedChanged="cbPassword_CheckedChanged" AutoPostBack="true" CssClass="checkbox" /></td>
            <td class="glow-text">Password: <asp:Label ID="lblPassword" runat="server"></asp:Label></td>
            <td><asp:TextBox ID="txtPassword" runat="server" CssClass="glow-input" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is Required" ControlToValidate="txtPassword" Display="Dynamic" ForeColor="#ff0033"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td><asp:Label ID="lblConfirm" runat="server" Text="Confirm Password" CssClass="glow-text"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="glow-input" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="cvPasswords" runat="server" ErrorMessage="Passwords Must Match" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" Display="Dynamic" ForeColor="#ff0033"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="rfvPasswordC" runat="server" ErrorMessage="Password is Required" ControlToValidate="txtPassword" Display="Dynamic" ForeColor="#ff0033"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><asp:CheckBox ID="cbFName" runat="server" OnCheckedChanged="cbFName_CheckedChanged" AutoPostBack="true" CssClass="checkbox" /></td>
            <td class="glow-text">First Name: <asp:Label ID="lblFName" runat="server"></asp:Label></td>
            <td><asp:TextBox ID="txtFName" runat="server" CssClass="glow-input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFName" runat="server" ErrorMessage="New First Name Required" ControlToValidate="txtFName" Display="Dynamic" ForeColor="#ff0033"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><asp:CheckBox ID="cbLName" runat="server" OnCheckedChanged="cbLName_CheckedChanged" AutoPostBack="true" CssClass="checkbox" /></td>
            <td class="glow-text">Last Name: <asp:Label ID="lblLName" runat="server"></asp:Label></td>
            <td><asp:TextBox ID="txtLName" runat="server" CssClass="glow-input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLName" runat="server" ErrorMessage="New Last Name Required" ControlToValidate="txtLName" Display="Dynamic" ForeColor="#ff0033"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><asp:CheckBox ID="cbPhone" runat="server" OnCheckedChanged="cbPhone_CheckedChanged" AutoPostBack="true" CssClass="checkbox" /></td>
            <td class="glow-text">Phone Number: <asp:Label ID="lblPhone" runat="server"></asp:Label></td>
            <td><asp:TextBox ID="txtPhone" runat="server" CssClass="glow-input"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone"
                ErrorMessage="Invalid phone number format. Use (XXX) XXX-XXXX"
                ValidationExpression="^\(\d{3}\) \d{3}-\d{4}$" Display="Dynamic" ForeColor="#ff0033">
            </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><asp:CheckBox ID="cbYoB" runat="server" OnCheckedChanged="cbYoB_CheckedChanged" AutoPostBack="true" CssClass="checkbox" /></td>
            <td class="glow-text">Year of Birth: <asp:Label ID="lblYoB" runat="server"></asp:Label></td>
            <td><asp:TextBox ID="txtYoB" runat="server" CssClass="glow-input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvYoB" runat="server" ErrorMessage="Year of birth must be 4 digits" ControlToValidate="txtYoB" Display="Dynamic" ForeColor="#ff0033"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="glow-text">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"><asp:CheckBox ID="cbAddress" runat="server" OnCheckedChanged="cbAddress_CheckedChanged" AutoPostBack="true" CssClass="checkbox" /></td>
            <td class="auto-style14"><strong>Address</strong></td>
            <td class="glow-text">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="glow-text">Street Address: <asp:Label ID="lblStreetAddress" runat="server"></asp:Label></td>
            <td class="glow-text"><asp:TextBox ID="txtStreetAddress" runat="server" CssClass="glow-input"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="glow-text">City: <asp:Label ID="lblCity" runat="server"></asp:Label></td>
            <td class="glow-text"><asp:TextBox ID="txtCity" runat="server" CssClass="glow-input"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="glow-text">State: <asp:Label ID="lblState" runat="server"></asp:Label></td>
            <td class="glow-text"><asp:TextBox ID="txtState" runat="server" CssClass="glow-input"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="glow-text">Zipcode: <asp:Label ID="lblZipcode" runat="server"></asp:Label></td>
            <td class="glow-text"><asp:TextBox ID="txtZipcode" runat="server" CssClass="glow-input" TextMode="Number"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="glow-text">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"><asp:CheckBox ID="cbPaymentMethod" runat="server" OnCheckedChanged="cbPaymentMethod_CheckedChanged" AutoPostBack="true" CssClass="checkbox" /></td>
            <td class="auto-style14"><strong>Payment Method</strong></td>
            <td class="glow-text">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="glow-text">Name on Card: <asp:Label ID="lblNameOnCard" runat="server"></asp:Label></td>
            <td class="glow-text"><asp:TextBox ID="txtNameOnCard" runat="server" CssClass="glow-input"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="glow-text">Card Number: <asp:Label ID="lblCardNumber" runat="server"></asp:Label></td>
            <td class="glow-text"><asp:TextBox ID="txtCardNumber" runat="server" CssClass="glow-input" TextMode="Number"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="glow-text">Expiration Date: <asp:Label ID="lblExpirationDate" runat="server"></asp:Label></td>
            <td class="glow-text"><asp:TextBox ID="txtExpirationDate" runat="server" CssClass="glow-input"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="glow-text">CVV: <asp:Label ID="lblCVV" runat="server"></asp:Label></td>
            <td class="glow-text"><asp:TextBox ID="txtCVV" runat="server" CssClass="glow-input" TextMode="Number"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:F24Team8ConnectionString2 %>" DeleteCommand="DELETE FROM [UserInformation] WHERE [Email] = @Email" InsertCommand="INSERT INTO [UserInformation] ([Email], [Password], [FName], [LName], [YOB], [PhoneNumber], [StreetAddress], [City], [State], [ZipCode], [NameOnCard], [CardNumber], [ExpirationDate], [CVV]) VALUES (@Email, @Password, @FName, @LName, @YOB, @PhoneNumber, @StreetAddress, @City, @State, @ZipCode, @NameOnCard, @CardNumber, @ExpirationDate, @CVV)" SelectCommand="SELECT * FROM [UserInformation] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [UserInformation] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB, [PhoneNumber] = @PhoneNumber, [StreetAddress] = @StreetAddress, [City] = @City, [State] = @State, [ZipCode] = @ZipCode, [NameOnCard] = @NameOnCard, [CardNumber] = @CardNumber, [ExpirationDate] = @ExpirationDate, [CVV] = @CVV WHERE [Email] = @Email">
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
            </td>
            <td><asp:Button ID="btnUpdateInformation" runat="server" Text="Update Information" CssClass="sci-fi-button" OnClick="btnUpdateInformation_Click"/></td>
            <td>
                <asp:Label ID="lblUpdateStatus" runat="server" CssClass="glow-text" ForeColor="Red" Visible="false"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
