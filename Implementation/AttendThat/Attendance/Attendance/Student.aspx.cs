using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Attendance
{
    public partial class Student : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-1GI0ER8\\SQLSERVER; initial catalog=dbAttendance; integrated security=true;";
            con.Open();
        }

        

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "Update Student set First_Name='" + txtFName.Text + "',Last_Name='" + txtLName.Text + "',DOB='" + txtDOB.Text + "',Address='" + txtAddress.Text + "',Phone='" + txtPhone.Text + "',Class_Name='" + DropDownList1.Text + "' where Student_ID='" + txtStudentID.Text + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Student Has Been update Successfully";

        }

        protected void Button1_Click(EventArgs e)
        {
          
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Student" + "(Student_ID,First_Name,Last_Name,DOB,Address,Phone,Class_Name)values(@Student_ID,@First_Name,@Last_Name,@DOB,@Address,@Phone,@Class_Name)", con);
            cmd.Parameters.AddWithValue("@Student_ID", txtStudentID.Text);
            cmd.Parameters.AddWithValue("@First_Name", txtFName.Text);
            cmd.Parameters.AddWithValue("@Last_Name", txtLName.Text);
            cmd.Parameters.AddWithValue("@DOB", txtDOB.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
            cmd.Parameters.AddWithValue("@Class_Name", DropDownList1.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "Student Has Been Added Successfully";


        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "delete from Student where Student_ID='" + txtStudentID + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Student Has Been Deleted Successfully";

        }

        protected void btnRedirectClass_Click(object sender, EventArgs e)
        {
            Response.Redirect("Class.aspx");
        }

        protected void btnRedirectSubject_Click(object sender, EventArgs e)
        {
            Response.Redirect("Subject.aspx");
        }

        protected void btnRedirectAttendance_Click(object sender, EventArgs e)
        {
            Response.Redirect("AttendanceForm.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Dashbord.aspx");
        }
    }
}