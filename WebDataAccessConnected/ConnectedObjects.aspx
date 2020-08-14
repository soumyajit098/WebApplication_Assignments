<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConnectedObjects.aspx.cs" Inherits="WebDataAccessConnected.ConnectedObjects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            margin-left: 0px;
        }
    </style>
</head>
<body style="margin-left: 339px">
    
    <form id="form1" runat="server" visible="True">
        <asp:GridView ID="GridView1" runat="server" Height="295px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="371px" style="margin-left: 0px">
        </asp:GridView>
        <br />
        <br />
        EmpId&nbsp;&nbsp;
        <asp:TextBox ID="txtEmpId" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" BackColor="White" EnableViewState="False" Font-Bold="True" Font-Italic="False" Font-Names="Arial Rounded MT Bold" ForeColor="#CC0000"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        EmpName <asp:TextBox ID="txtEmpName" runat="server"></asp:TextBox>
        <br />
        <br />
        EmpSalary&nbsp;
        <asp:TextBox ID="txtEmpSalary" runat="server"></asp:TextBox>
&nbsp;<br />
        <br />
&nbsp;
        <asp:Button ID="btnInsertEmp" runat="server" OnClick="btnInsertEmp_Click" Text="InsertEmp" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="btnUpdatePara" runat="server" OnClick="btnUpdatePara_Click" Text="UpdateWithParameters" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDeleteWithSp" runat="server" OnClick="btnDeleteWithSp_Click" Text="DelWithSp" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="SearchEmp" />
        <br />
        <br />
&nbsp;
        <asp:Button ID="btnInsertPara" runat="server" OnClick="btnInsertPara_Click" Text="InsertEmpWithParameters" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUpdateEmp" runat="server" OnClick="btnUpdateEmp_Click" Text="UpdateEmp" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDelEmp" runat="server" OnClick="btnDelEmp_Click" Text="DeleteEmp" />
        <br />
        <br />
&nbsp;
        <asp:Button ID="btnInsertSp" runat="server" OnClick="btnInsertSp_Click" Text="InsertWithSp" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUpdateSp" runat="server" OnClick="btnUpdateSp_Click" Text="UpdateWithSp" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDelWithPara" runat="server" OnClick="btnDelWithPara_Click" Text="DeleteWithParameters" />
        <br />
        <br />
    </form>
    
</body>
</html>
