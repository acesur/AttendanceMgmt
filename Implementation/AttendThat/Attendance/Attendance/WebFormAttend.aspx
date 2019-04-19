<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormAttend.aspx.cs" Inherits="Attendance.WebFormAttend" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 74%;
            height: 52px;
            background-color: #006600;
        }
        .auto-style3 {
            height: 25px;
        }
        .auto-style4 {
            height: 25px;
            width: 330px;
            background-color: #669999;
        }
        .auto-style5 {
            width: 330px;
            background-color: #669999;
        }
        .auto-style7 {
            background-color: #669999;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
        <div class="auto-style1">
        <div>
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" BackColor="Lime" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="Black" Text="Attendance Management System"></asp:Label>
            <br />
            <br />
            <br />
        </div>
            <asp:Label ID="Label2" runat="server" BackColor="#00CCFF" BorderColor="Black" BorderStyle="Double" Font-Size="Large" Font-Strikeout="False" Text="Now you can take the student's Attend Status"></asp:Label>
            <br />
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Class</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style7" DataSourceID="SqlDataSource1" DataTextField="Class" DataValueField="Class" Height="24px" Width="141px">
                    </asp:DropDownList>
                </td>
            </tr>
             <tr>
                <td class="auto-style5">&nbsp;&nbsp; &nbsp;<br />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#999966" CssClass="auto-style7" Font-Bold="True" Height="29px" OnClick="Button1_Click" Text="Take Attend" Width="95px" />
                </td>
            </tr>
        </table>

        <p>
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </p>
  
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="RollID" HeaderText="Roll ID" SortExpression="RollID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="StudentName" HeaderText="Student Name" SortExpression="StudentName">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Mark Attendance">
                    <ItemTemplate>
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="g1" Text="Present" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g1" Text="Absent" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Save" />
        </p>
        <p>
            <asp:Label ID="Label4" runat="server"></asp:Label>
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AttendConnectionString %>" SelectCommand="SELECT DISTINCT [Class] FROM [StudentDetails]"></asp:SqlDataSource>
        <p>
            &nbsp;</p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AttendConnectionString %>" SelectCommand="SELECT [RollID], [StudentName] FROM [StudentDetails] WHERE ([Class] = @Class)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Class" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
