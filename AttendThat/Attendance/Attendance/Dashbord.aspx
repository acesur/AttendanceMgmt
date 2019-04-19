<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashbord.aspx.cs" Inherits="Attendance.Dashbord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
            float: right;
            border: 4px solid #800000;
        }
        .auto-style3 {
            text-align: center;
            text-decoration: underline;
        }
        .auto-style4 {
            width: 100%;
            background-color: #008000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <strong>Attendance Management System</strong></div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <table align="center" cellpadding="3" cellspacing="3" class="auto-style2">
            <tr>
                <td class="auto-style3"><strong>Students</strong></td>
                <td class="auto-style3"><strong>Class</strong></td>
                <td class="auto-style3"><strong>Subject</strong></td>
            </tr>
            <tr>
                <td class="auto-style1">You can add the students here !!!<br />
                    To Add The Student <strong>Click the button</strong></td>
                <td class="auto-style1">You can add the Class here!!!<br />
                    To Add The Class <strong>Click the button</strong></td>
                <td class="auto-style1">You can add the Subjects here!!!<br />
                    To Add The Subject <strong>Click the button</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnStudents" runat="server" OnClick="btnStudents_Click" Text="Add Student" />
                </td>
                <td>
                    <asp:Button ID="btnClass" runat="server" OnClick="btnClass_Click" Text="Add Class" />
                </td>
                <td>
                    <asp:Button ID="btnSubject" runat="server" OnClick="btnSubject_Click" Text="Add Subject" />
                </td>
            </tr>
        </table>
        <p class="auto-style1">
            &nbsp;</p>
        <table class="auto-style4">
            <tr>
                <td class="auto-style1">Attendance</td>
                <td class="auto-style1">Report</td>
            </tr>
            <tr>
                <td class="auto-style1">You can Take the students attendance here !!!<br />
                    To Take The Student <strong>attendance Click the button</strong></td>
                <td class="auto-style1">You can see the students Report here !!!<br />
                    To See The Student Reports <strong>Click the button</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnAttendance" runat="server" OnClick="btnAttendance_Click" Text="Take Attendance" />
                </td>
                <td>
                    <asp:Button ID="btnReport" runat="server" OnClick="btnReport_Click" Text="Student Reports" />
                </td>
            </tr>
        </table>
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        <asp:Button ID="btnLogOut" runat="server" OnClick="btnLogOut_Click" Text="Log Out" />
        </p>
    </form>
    <p class="auto-style1">
        @Copyright<br />
        Designed By: Suresh Chaudhary<br />
        Softwarica College of IT and E-Commerce</p>
</body>
</html>
