<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <div style="width:100%; vertical-align:middle" align="center">

        <table align="center" width="30%">
            <tr>
                <td align="center">
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="LOGIN" Font-Bold="True" Font-Size="16pt" ForeColor="#FCCE54"></asp:Label>
                    <hr />
                    <br />
                </td>
            </tr>

            <tr>
                <td align="center">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" placeholder="Email ID"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>

            <tr>
                <td align="center">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="txt" TextMode="Password" placeholder="Password"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass="button" />
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server"  Text="Not a Member ?" Font-Names="Bell MT" Font-Size="Medium"></asp:Label>
&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Bell MT" Font-Size="Medium" OnClick="LinkButton1_Click">Register</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>

                    <br />
                    <br />
                    <br />
                    <br />
                    <br />

                </td>
            </tr>
        </table>
    </div>
</asp:Content>
