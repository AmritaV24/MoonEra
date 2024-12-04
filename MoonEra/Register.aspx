<%@ Page Title="Register" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MoonEra.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- jQuery Script Reference -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <style>
        /* Scrollable Wrapper Styling */
        .scrollable-wrapper {
            max-height: 400px;
            overflow-y: auto;
            margin: 50px auto;
            padding: 20px;
        }

        .scrollable-wrapper::-webkit-scrollbar {
            width: 12px;
        }

        .scrollable-wrapper::-webkit-scrollbar-track {
            background: #2c2f33;
            border-radius: 10px;
        }

        .scrollable-wrapper::-webkit-scrollbar-thumb {
            background: linear-gradient(45deg, #ff1493, #00e5ff);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(255, 20, 147, 0.8), 0 0 15px rgba(0, 229, 255, 0.6);
        }

        .scrollable-wrapper::-webkit-scrollbar-thumb:hover {
            background: linear-gradient(45deg, #ff69b4, #00ffff);
            box-shadow: 0 0 15px rgba(255, 105, 180, 0.9), 0 0 20px rgba(0, 255, 255, 0.8);
        }

        /* Container Styling */
        .container {
            max-width: 1000px; /* Double the original size */
            padding: 40px; /* Increased padding */
            text-align: center;
            background: linear-gradient(135deg, #ff4500, #ff8c00);
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(255, 69, 0, 0.8), 0 0 25px rgba(255, 140, 0, 0.6);
            color: #ffffff;
            font-family: Arial, sans-serif;
        }

        /* Heading Styling */
        .container h2 {
            font-size: 2.5em; /* Slightly larger heading */
            color: #ffdf00;
            text-shadow: 0 0 10px #ffdf00, 0 0 20px #ffb300;
            margin-bottom: 30px;
            font-weight: bold;
            text-transform: uppercase;
        }

        /* Input Styling */
        .container input[type="text"],
        .container input[type="password"] {
            width: 80%; /* Adjusted width for larger container */
            padding: 20px; /* Increased padding for input fields */
            margin: 15px 0;
            border: none;
            border-radius: 5px;
            background-color: rgba(255, 255, 255, 0.1);
            color: #fff;
            font-size: 1.2em; /* Slightly larger font size */
            box-shadow: inset 0 0 5px rgba(255, 255, 255, 0.2);
        }

        /* Button Styling */
        .btn-register, .btn-clear {
            background: linear-gradient(45deg, #ff1493, #ff4500);
            color: #ffffff;
            padding: 20px 40px; /* Increased button size */
            border: none;
            border-radius: 5px;
            font-size: 1.2em;
            font-weight: bold;
            cursor: pointer;
            box-shadow: 0 4px 15px rgba(255, 105, 180, 0.6), 0 6px 20px rgba(255, 20, 147, 0.8);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .btn-register:hover, .btn-clear:hover {
            transform: scale(1.1);
            box-shadow: 0 4px 20px rgba(255, 69, 0, 0.8), 0 8px 30px rgba(255, 20, 147, 1);
        }

        /* Error Message Styling */
        .lbl-message {
            margin-top: 15px;
            font-size: 1.3em; /* Slightly larger error message font */
            color: #ffdf00;
            text-shadow: 0 0 5px #ff8c00, 0 0 10px #ff4500;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="scrollable-wrapper">
        <div class="container">
            <h2>Create a New Account</h2>
            <p>We are thrilled that you want to become part of the MoonEra family.</p>
            <p>We just need a couple of details to get started.</p>

             <table style="width: 90%; margin: 20px auto;">
                <!-- First Name -->
                <tr>
                    <td>First Name</td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
                            ControlToValidate="txtFirstName" ErrorMessage="First Name is required." />
                    </td>
                </tr>

                <!-- Last Name -->
                <tr>
                    <td>Last Name</td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" placeholder="Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server"
                            ControlToValidate="txtLastName" ErrorMessage="Last Name is required." />
                    </td>
                </tr>

                <!-- Password -->
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                            ControlToValidate="txtPassword" ErrorMessage="Password is required." />
                    </td>
                </tr>

                <!-- Confirm Password -->
                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                        <asp:CompareValidator ID="cvPasswords" runat="server"
                            ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"
                            ErrorMessage="Passwords must match." />
                    </td>
                </tr>

                <!-- Email -->
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                            ControlToValidate="txtEmail" ErrorMessage="Email is required." />
                    </td>
                </tr>

                <!-- Confirm Email -->
                <tr>
                    <td>Confirm Email</td>
                    <td>
                        <asp:TextBox ID="txtConfirmEmail" runat="server" placeholder="Confirm Email"></asp:TextBox>
                        <asp:CompareValidator ID="cvEmails" runat="server"
                            ControlToCompare="txtEmail" ControlToValidate="txtConfirmEmail"
                            ErrorMessage="Emails must match." />
                    </td>
                </tr>

                <!-- Year of Birth -->
                <tr>
                    <td>Year of Birth (YOB)</td>
                    <td>
                        <asp:TextBox ID="txtYOB" runat="server" placeholder="Year of Birth"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvYOB" runat="server"
                            ControlToValidate="txtYOB" ErrorMessage="Year of Birth must be in XXXX format (ex.1994)." />
                    </td>
                </tr>

                <!-- Buttons -->
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn-register" OnClick="btnRegister_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn-clear" />
                    </td>
                </tr>
            </table>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:F24Team8ConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [Email] = @Email" InsertCommand="INSERT INTO [User] ([Email], [Password], [FName], [LName], [YOB], [PhoneNumber], [StreetAddress], [City], [State], [ZipCode], [NameOnCard], [CardNumber], [ExpirationDate], [CVV]) VALUES (@Email, @Password, @FName, @LName, @YOB, @PhoneNumber, @StreetAddress, @City, @State, @ZipCode, @NameOnCard, @CardNumber, @ExpirationDate, @CVV)" SelectCommand="SELECT * FROM [User] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [User] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB, [PhoneNumber] = @PhoneNumber, [StreetAddress] = @StreetAddress, [City] = @City, [State] = @State, [ZipCode] = @ZipCode, [NameOnCard] = @NameOnCard, [CardNumber] = @CardNumber, [ExpirationDate] = @ExpirationDate, [CVV] = @CVV WHERE [Email] = @Email">
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

            <!-- Error Message -->
            <asp:Label ID="lblError" runat="server" CssClass="lbl-message"></asp:Label>
        </div>
    </div>
</asp:Content>
