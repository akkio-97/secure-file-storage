<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User_Register.aspx.cs" Inherits="User_Register" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:100%; vertical-align:middle" align="center">
        <table align="center" width="70%">
            <tr>
                <td align="center">
                    <br />
                    <br />
                        <asp:Label ID="Label1" runat="server" Text="Register Page" Font-Bold="True" Font-Size="16pt" ForeColor="#006600"></asp:Label>
                    <hr />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Name" CssClass="text" Height="35px" Width="370px" ></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="TextBox2" runat="server" placeholder="Email-Id" CssClass="text"  Height="35px" Width="370px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email Id!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>

                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Address" CssClass="text" Height="35px" Width="370px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Password" 
                        CssClass="text" Height="35px" Width="370px" TextMode="Password"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>

            <tr>
                <td align="center">
                    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" CssClass="button" />
                    <br />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>