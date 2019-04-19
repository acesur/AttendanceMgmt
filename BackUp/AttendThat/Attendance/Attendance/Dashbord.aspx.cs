using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Attendance
{
    public partial class Dashbord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStudents_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student.aspx");
        }

        protected void btnClass_Click(object sender, EventArgs e)
        {
            Response.Redirect("Class.aspx");
        }

        protected void btnSubject_Click(object sender, EventArgs e)
        {
            Response.Redirect("Subject.aspx");
        }

        protected void btnAttendance_Click(object sender, EventArgs e)
        {
            Response.Redirect("AttendanceForm.aspx");
        }

        protected void btnReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportAttendance.aspx");
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("account/login");
        }
    }
}