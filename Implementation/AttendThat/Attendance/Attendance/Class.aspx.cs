using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Attendance
{
    public partial class Class : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("insert into Class" + "(Class_ID,Class_Name)values(@Class_ID,@Class_Name)",con);
            cmd.Parameters.AddWithValue("@Class_ID",txtClassID.Text);
            cmd.Parameters.AddWithValue("@Class_Name", txtClassName.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "Class Has Been Saved Successfully";
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "delete from Class where Class_ID='" + txtClassID + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Class Has Been Deleted Successfully";

        }

        protected void btnRedirectAttendance_Click(object sender, EventArgs e)
        {
            Response.Redirect("AttendanceForm.aspx");
        }

        protected void btnRedirectStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student.aspx");
        }

        protected void btnRedirectSubject_Click(object sender, EventArgs e)
        {
            Response.Redirect("Subject.aspx");
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("account/login");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashbord.aspx");
        }
    }
}