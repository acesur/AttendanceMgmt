<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentCRUD.aspx.cs" Inherits="Attendance.StudentCRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <table>
                <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="RollID"></asp:Label>
                    </td>
                 <td colspan="2">
                     <asp:TextBox ID="txtrollID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="StudentName"></asp:Label>
                    </td>
                 <td colspan="2">
                     <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Class"></asp:Label>
                    </td>
                 <td colspan="2">
                     <asp:TextBox ID="txtclass" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                 <td>
                  
                    </td>
                 <td colspan="2">
                     <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" />
                     <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" />
                     <asp:Button ID="btnclear" runat="server" Text="Clear" OnClick="btnclear_Click" />
                    </td>
                </tr>
                <tr>
                  <td>
                  
                    </td>
                 <td colspan="2">
                     <asp:Label ID="lblsuccessmessage" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                  <td>
                  
                    </td>
                 <td colspan="2">
                     <asp:Label ID="lblerrormessage" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                
                </table>
            <br/>
            <asp:GridView ID="gvstudent" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="StudentName" HeaderText="StudentName"/>
                <asp:BoundField DataField="Class" HeaderText="Class"/>
                <asp:TemplateField>
                    <ItemTemplate><asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("RollID") %>' OnClick="lnk_OnClick">View</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                </asp:GridView>
        </div>
    </form>
</body>
</html>
