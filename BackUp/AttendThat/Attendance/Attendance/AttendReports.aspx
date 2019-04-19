<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AttendReports.aspx.cs" Inherits="Attendance.AttendReports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table>
                <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="RollId"></asp:Label>
                    </td>
                 <td colspan="2">
                     <asp:TextBox ID="txtrollId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="StudentName"></asp:Label>
                    </td>
                 <td colspan="2">
                     <asp:TextBox ID="txtsname" runat="server"></asp:TextBox>
                    </td>

                </tr>
                 <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="DateOfClass"></asp:Label>
                    </td>
                 <td colspan="2">
                     <asp:TextBox ID="txtdoc" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="AttendStatus"></asp:Label>
                    </td>
                 <td colspan="2">
                     <asp:TextBox ID="txtattendstatus" runat="server"></asp:TextBox>
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
                <asp:BoundField DataField="DateOfClass" HeaderText="DateOfClass"/>
                <asp:BoundField DataField="AttendStatus" HeaderText="AttendStatus"/>
                <asp:BoundField DataField="Class" HeaderText="Class"/>
                <asp:TemplateField>
                    <ItemTemplate><asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("RollId") %>' OnClick="lnk_OnClick">View</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                </asp:GridView>
        </div>
        
        <p>
            &nbsp;</p>
        <p class="auto-style1">
            <strong>
            <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Home" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnStudentAdd" runat="server" Text="Add Student" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAttendReport" runat="server" Text="Report" />
            </strong>
        </p>
        
    </form>
</body>
</html>
