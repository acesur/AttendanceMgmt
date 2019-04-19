using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Attendance
{
    public partial class Subject : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-1GI0ER8\\SQLSERVER; initial catalog=dbAttendance; integrated security=true;";
            con.Open();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Subject" + "(Subject_ID,Subject_Name,Class_Name)values(@Subject_ID,@Subject_Name,@Class_Name)", con);
            cmd.Parameters.AddWithValue("@Subject_ID", txtSubjectID.Text);
            cmd.Parameters.AddWithValue("@Subject_Name",txtSubjectName.Text);
            cmd.Parameters.AddWithValue("@Class_Name", DropDownList1.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "Subject Has Been Added Successfully";
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "Update Subject set Subject_Name='" + txtSubjectName.Text + "',Class_Name='" + DropDownList1.Text + "' where Subject_ID='" + txtSubjectID.Text + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Subject Has Been update Successfully";
        }

        protected void btnRedirectAttendance_Click(object sender, EventArgs e)
        {
            Response.Redirect("AttendanceForm.aspx");
        }

        protected void btnRedirectStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student.aspx");
        }

        protected void btnRedirectClass_Click(object sender, EventArgs e)
        {
            Response.Redirect("Class.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashbord.aspx");
        }
    }
}