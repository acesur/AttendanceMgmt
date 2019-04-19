<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="Attendance.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 49%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            width: 418px;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
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
            Add the students!!!<br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Student ID</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtStudentID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">First Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Last Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Date Of Birth</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Address</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Phone</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Class Name</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Class_Name" DataValueField="Class_Name">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbAttendanceConnectionString %>" SelectCommand="SELECT [Class_Name] FROM [Class]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Student" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Student" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete Student" />
        <table class="auto-style4">
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="btnRedirectAttendance" runat="server" OnClick="btnRedirectAttendance_Click" Text="Take Attendance" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnRedirectClass" runat="server" OnClick="btnRedirectClass_Click" Text="Add Class" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnRedirectSubject" runat="server" OnClick="btnRedirectSubject_Click" Text="Add Subject" />
                </td>
            </tr>
        </table>
         <br />
         List of the students!!!<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Student_ID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Class_Name" HeaderText="Class_Name" SortExpression="Class_Name" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" ReadOnly="True" SortExpression="Student_ID" />
            </Columns>
        </asp:GridView>
             <div class="auto-style2">
             <br />
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Home" />
            <br />
            @Copyright<br />
            Designed By: Suresh Chaudhary<br />
            Softwarica College of IT and E-Commerce<br />
         </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbAttendanceConnectionString %>" SelectCommand="SELECT [Class_Name], [Phone], [Address], [DOB], [Last_Name], [First_Name], [Student_ID] FROM [Student]"></asp:SqlDataSource>
    </form>
</body>
</html>
