<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subject.aspx.cs" Inherits="Attendance.Subject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="auto-style2">
         <span class="auto-style10"><strong>
             <br />
             <br />
             <br />
             Attendance Management System</strong></span>
         </div>
         <div class="auto-style2">
             <br />
             <br />
             <br />
             You can Add the Subjects Here!!!<br />
         </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Subject ID</td>
                <td>
                    <asp:TextBox ID="txtSubjectID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Subject Name</td>
                <td>
                    <asp:TextBox ID="txtSubjectName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Class Name</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Class_Name" DataValueField="Class_Name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbAttendanceConnectionString %>" SelectCommand="SELECT [Class_Name] FROM [Class]"></asp:SqlDataSource>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Subject" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Subject" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDelete" runat="server" CssClass="auto-style3" Text="Delete Subject" Width="109px" />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnRedirectAttendance" runat="server" OnClick="btnRedirectAttendance_Click" Text="Take Attendance" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnRedirectStudent" runat="server" OnClick="btnRedirectStudent_Click" Text="Add Student" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnRedirectClass" runat="server" OnClick="btnRedirectClass_Click" Text="Add Class" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Subject_ID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Subject_ID" HeaderText="Subject_ID" ReadOnly="True" SortExpression="Subject_ID" />
                <asp:BoundField DataField="Subject_Name" HeaderText="Subject_Name" SortExpression="Subject_Name" />
                <asp:BoundField DataField="Class_Name" HeaderText="Class_Name" SortExpression="Class_Name" />
            </Columns>
        </asp:GridView>
         List of the subjects!!!<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbAttendanceConnectionString %>" SelectCommand="SELECT [Subject_ID], [Subject_Name], [Class_Name] FROM [Subject]"></asp:SqlDataSource>
         <p class="auto-style2">
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
