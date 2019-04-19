<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportAttendance.aspx.cs" Inherits="Attendance.ReportAttendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
        <div class="auto-style2">
            <span class="auto-style10"><strong>
            <br />
            <br />
            Attendance Management System<br />
            <br />
            <br />
            </strong></span>
        </div>
            <div class="auto-style2">
                Here is the Form of the reports of the students
                <br />
                You can print this form<br />
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" SortExpression="Student_ID" />
                    <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                    <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Attend" HeaderText="Attend" SortExpression="Attend" />
                    <asp:BoundField DataField="Class_Name" HeaderText="Class_Name" SortExpression="Class_Name" />
                    <asp:BoundField DataField="Subject_Name" HeaderText="Subject_Name" SortExpression="Subject_Name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbAttendanceConnectionString %>" SelectCommand="SELECT [Student_ID], [First_Name], [Last_Name], [Date], [Attend], [Class_Name], [Subject_Name] FROM [Attendance]"></asp:SqlDataSource>
            <asp:Button ID="btnRedirectAttendanc" runat="server" OnClick="btnRedirectAttendanc_Click" Text="Take Attendance" />
        </div>
    </form>
    <p class="auto-style2">
        <br />
        <br />
        @Copy<br />
        Designed By: Suresh Chaudhary<br />
        Softwarica College of IT and E-Commerce<br />
    </p>
</body>
</html>
