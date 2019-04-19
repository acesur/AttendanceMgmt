using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Attendance
{
    public partial class AttendanceForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Mark Attendance for" + "" + DateTime.Now.ToShortDateString();
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {


        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {

                int Student_ID1 = Convert.ToInt32(row.Cells[0].Text);
                String First_Name1 = row.Cells[1].Text;
                String Last_Name1 = row.Cells[2].Text;
                RadioButton rbtn1 = (row.Cells[3].FindControl("RadioButton3") as RadioButton);
                RadioButton rbtn2 = (row.Cells[3].FindControl("RadioButton4") as RadioButton);
                String Attend1;
                if (rbtn1.Checked)
                {
                    Attend1 = "Present";

                }
                else
                {
                    Attend1 = "Absent";
                }
                String Date1 = DateTime.Now.ToShortDateString();
                String Class1 = DropDownList1.SelectedItem.Text;
                String Subject1 = DropDownList2.SelectedItem.Text;

                save(Student_ID1, First_Name1,Last_Name1, Date1, Attend1, Class1,Subject1);
            }
            Label2.Text = "Attendance Has Been Saved Successfully";
        }
        private void save(int Student_ID, String First_Name,String Last_Name, String Date1, String Attend, String Class_Name,String Subject_Name)
        {
            String query = "insert into Attendance(Student_ID,First_Name,Last_Name,Date,Attend,Class_Name,Subject_Name) " +
                "values(" + Student_ID + ",'" + First_Name + "','"+Last_Name+"','" + Date1 + "','" + Attend + "','" + Class_Name + "','"+Subject_Name+"')";
            String mycon = "Data Source=DESKTOP-1GI0ER8\\SQLSERVER; Initial Catalog=dbAttendance; Integrated Security=true";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

        }

       

        protected void btnRedirectSubject_Click(object sender, EventArgs e)
        {
            Response.Redirect("Subject.aspx");
        }

        protected void btnRedirectReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportAttendance.aspx");
        }

        protected void btnDashbord_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashbord.aspx");
        }

        protected void btnClass_Click(object sender, EventArgs e)
        {
            Response.Redirect("Class.aspx");
        }

        protected void btnStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student.aspx");
        }
    }
}