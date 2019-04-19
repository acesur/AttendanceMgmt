<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Class.aspx.cs" Inherits="Attendance.Class" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 41%;
        }
        .auto-style2 {
            text-align: center;
            width: 782px;
        }
        .auto-style3 {
            width: 386px;
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="auto-style6">
             <div class="auto-style6">
         <span class="auto-style10"><strong>
                 <br />
                 Attendance Management System</strong></span>
             </div>
             <div class="auto-style6">
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 Add the Class Here!!!<br />
             </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Class ID</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtClassID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Class Name</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtClassName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">&nbsp;&nbsp;
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Class" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete Class" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
        <div class="auto-style8">
            <asp:Button ID="btnRedirectAttendance" runat="server" OnClick="btnRedirectAttendance_Click" Text="Take Attendance" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnRedirectStudent" runat="server" OnClick="btnRedirectStudent_Click" Text="Add Student" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnRedirectSubject" runat="server" OnClick="btnRedirectSubject_Click" Text="Add Subject" />
        </div>
    <table class="auto-style7">
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
             <p>
                 List of the classes!!</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Class_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Class_ID" HeaderText="Class_ID" ReadOnly="True" SortExpression="Class_ID" />
                <asp:BoundField DataField="Class_Name" HeaderText="Class_Name" SortExpression="Class_Name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbAttendanceConnectionString %>" SelectCommand="SELECT * FROM [Class]"></asp:SqlDataSource>
        <asp:Button ID="btnExit" runat="server" OnClick="btnExit_Click" Text="Exit" />
         </div>
         <p class="auto-style6">
             <br />
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Home" />
             <br />
             @Copyright<br />
             Designed By: Suresh Chaudhary<br />
             Softwarica College of IT and E-Commerce<br />
         </p>
    </form>
    </body>
</html>
