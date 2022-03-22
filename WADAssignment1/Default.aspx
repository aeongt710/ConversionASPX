<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WADAssignment1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        div{
            margin:20px;
        }
        span{
            margin:50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="text-align:center; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">
        <div style="text-align:center; font-weight: bolder; font-size: 36px; color:#f36633;">
            <asp:Label ID="Label1" runat="server" Text="Number System Converter"></asp:Label>
            <br />
            <hr />
        </div>
        <div>

            <asp:Label ID="Label2" runat="server" Text="Source Number Format:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="10">Decimal</asp:ListItem>
                <asp:ListItem Value="2">Binary</asp:ListItem>
                <asp:ListItem Value="8">Octal</asp:ListItem>
                <asp:ListItem Value="16">Hexadecimal</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Target Number Format:"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="10">Decimal</asp:ListItem>
                <asp:ListItem Value="2">Binary</asp:ListItem>
                <asp:ListItem Value="8">Octal</asp:ListItem>
                <asp:ListItem Value="16">Hexadecimal</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Enter Input Value:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br /><br /><br />
            <%--<asp:Button ID="Button1" runat="server" OnClick="ConvertFunction" Text="Convert" style="background-color:blue;margin:48px;"/>--%>
            <asp:Button runat="server" id="btnTest" Text="Convert" OnClick="btnTest_Click"  />
            <asp:Button id="btnClear" OnClick="btnClear_Click" runat="server" Text="Clear" />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Final Output:"></asp:Label>
            <asp:Label ID="OutputValue" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
