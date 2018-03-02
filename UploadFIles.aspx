<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UploadFiles.aspx.cs" Inherits="UploadFIles" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="Body">
    <div style="width:100%" align="center">
        <table align="center" width="50%">
            <tr>
                <td align="center">
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="UPLOAD FILE" Font-Bold="True" Font-Size="16pt" ForeColor="#FCCE54"></asp:Label>
                    <hr />
                </td>
            </tr>
            <tr>
                <td align="left">
                    <asp:Label ID="Label2" runat="server" Text="Share with :" Font-Bold="True" Font-Size="14pt" ForeColor="#FCCE54"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt">
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="left">
                    <asp:Label ID="Label3" runat="server" Text="Select File :" Font-Bold="True" Font-Size="14pt" ForeColor="#FCCE54"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:FileUpload ID="FileUpload1" runat="server" class="fl" ForeColor="#0099CC" CssClass="txt" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="left">
                    <asp:Label ID="Label4" runat="server" Text="Password Image :" Font-Bold="True" Font-Size="14pt" ForeColor="#FCCE54"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:FileUpload ID="FileUpload2" runat="server" class="fl" ForeColor="#FCCE54" CssClass="txt" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Image ID="Image2" Width="70%" runat="server" Visible="False" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="left">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#FCCE54" Text="Key"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left">
                    <asp:TextBox ID="TextBox1" runat="server"  CssClass="txt" ></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" class="rm" ForeColor="White" CssClass="button" />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>