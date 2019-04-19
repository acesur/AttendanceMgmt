using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Attendance
{
    public partial class AttendReports : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-1GI0ER8\SQLSERVER; Initial Catalog=Attend;Integrated Security=true;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btndelete.Enabled = false;
                FillGridView();

            }
        }
        protected void btnclear_Click(object sender, EventArgs e)
        {
            Clear();

        }
        public void Clear()
        {

            txtrollId.Text = txtsname.Text =txtdoc.Text=txtattendstatus.Text= txtclass.Text = "";
            lblsuccessmessage.Text = lblerrormessage.Text = "";
            btnsave.Text = "Save";
            btndelete.Enabled = false;
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == System.Data.ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("AttendStatusCreateOrUpdate", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@RollID", txtrollId.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@StudentName", txtsname.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@DateOfClass", txtdoc.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@AttendStatus", txtattendstatus.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Class", txtclass.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            Clear();
            if (txtrollId.Text == "")
                lblsuccessmessage.Text = "Saved Successfully ";
            else
                lblerrormessage.Text = "Updated Successfully";
            FillGridView();
        }
        void FillGridView()
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("AttendStatusView", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            gvstudent.DataSource = dtbl;
            gvstudent.DataBind();
        }
        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int rollId = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("AttendStatusViewByID", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@RollId", rollId);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            txtrollId.Text = dtbl.Rows[0]["RollID"].ToString();
            txtsname.Text = dtbl.Rows[0]["StudentName"].ToString();
            txtdoc.Text = dtbl.Rows[0]["DateOfClass"].ToString();
            txtattendstatus.Text = dtbl.Rows[0]["AttendStatus"].ToString();
            txtclass.Text = dtbl.Rows[0]["Class"].ToString();
            btnsave.Text = "Update";
            btndelete.Enabled = true;
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("AttendStatusDeleteByID", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@RollId", Convert.ToInt32(txtrollId.Text));
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            Clear();
            FillGridView();
            lblsuccessmessage.Text = "Deleted Successfully";
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            
        }
    }
}