<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AttendanceForm.aspx.cs" Inherits="Attendance.AttendanceForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 54%;
        }
        .auto-style3 {
            text-align: center;
            width: 490px;
        }
        .auto-style4 {
            text-align: center;
            width: 232px;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            text-align: right;
            height: 34px;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            background-color: #999966;
        }
        .auto-style9 {
            text-align: center;
            width: 1265px;
            height: 219px;
            position: absolute;
            left: 5px;
            top: 290px;
        }
        .auto-style10 {
            font-family: Consolas;
            font-size: larger;
        }
    </style>
</head>
<body>
    <div class="continer">
    <form id="form1" runat="server">
        <div class="auto-style7">
        <div class="auto-style1">
            <br />
            <br />
            <br />
            <br />
            <span class="auto-style10"><strong>Attendance Management System<br />
            <br />
            <br />
            </strong></span></div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Class<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbAttendanceConnectionString %>" SelectCommand="SELECT [Class_Name] FROM [Student]"></asp:SqlDataSource>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Class_Name" DataValueField="Class_Name">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" Text="Select Class" />
                    <br />
                    <br />
                    Chooses the classes you want to talke attendance above ^<br />
                </td>
            </tr>
        </table>
        <div class="auto-style1">
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            Subject<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Subject_Name" DataValueField="Subject_Name">
            </asp:DropDownList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbAttendanceConnectionString %>" SelectCommand="SELECT [Subject_Name], [Class_Name] FROM [Subject]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnChoose" runat="server" Text="Choose Subject" />
&nbsp;&nbsp;
        <div class="auto-style9">
            <br />
            <br />
            <br class="auto-style8" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            Mark the attendance of the students First!!<br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Student_ID" DataSourceID="SqlDataSource3" CssClass="auto-style8">
                <Columns>
                    <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" ReadOnly="True" SortExpression="Student_ID" />
                    <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                    <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                    <asp:TemplateField HeaderText="Attend Status">
                        <ItemTemplate>
                            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="g2" Text="Present" />
                            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="g2" Text="Absent" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="g1" Text="Present" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g1" Text="Absent" />
                </EmptyDataTemplate>
                <HeaderStyle BackColor="#00FFCC" BorderColor="#663300" BorderWidth="2px" />
                <PagerStyle Font-Italic="True" />
            </asp:GridView>
            <br />
        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save Attendance" />
            <br />
            <asp:Button ID="btnRedirectReport" runat="server" OnClick="btnRedirectReport_Click" Text="Attendance Report" />
            <br />
            <asp:Button ID="btnDashbord" runat="server" OnClick="btnDashbord_Click" Text="Home" />
            <br />
            @Copyright<br />
            Designed By: Suresh Chaudhary<br />
            Softwarica College of IT and E-Commerce<br />
        </div>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbAttendanceConnectionString %>" SelectCommand="SELECT [Student_ID], [First_Name], [Last_Name] FROM [Student] WHERE ([Class_Name] = @Class_Name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Class_Name" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <br />
        <table class="auto-style5">
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnStudent" runat="server" OnClick="btnStudent_Click" Text="Add Student" />
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:Button ID="btnClass" runat="server" OnClick="btnClass_Click" Text="Add Class" />
                    &nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnRedirectSubject" runat="server" OnClick="btnRedirectSubject_Click" Text="Add Subject" />
                </td>
            </tr>
        </table>
        </div>
    </form>
        </div>
    <p>
        You can save the attendance of the Students of the subject!!!</p>
    <p>
        &nbsp;</p>
</body>
</html>
