<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadiobuttonAssignment.aspx.cs" Inherits="WebAppRadioButtonAssignment.CricketPlayer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 199px;
            margin-left: 330px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" GroupName="a" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Cricket Player" />
        <br />
        <br />
        <br />
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" GroupName="a" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Tennis Player" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HtmlSachin.html">Sachin Tendulkar</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/HtmlSourav.html">Sourav Ganguly</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/HtmlMSDhoni.html">MS Dhoni</asp:HyperLink>
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel2" runat="server">
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/HtmlRoger.html">Roger Federer</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/HtmlSerena.html">Serena Williams</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/HtmlNadal.html">Rafael Nadal</asp:HyperLink>
        </asp:Panel>
        <br />
        <br />
        <br />
    </form>
</body>
</html>
