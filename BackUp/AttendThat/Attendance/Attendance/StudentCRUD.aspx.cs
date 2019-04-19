using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Attendance
{
    public partial class StudentCRUD : System.Web.UI.Page
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
            
            txtrollID.Text=txtname.Text = txtclass.Text = "";
            lblsuccessmessage.Text = lblerrormessage.Text = "";
            btnsave.Text = "Save";
            btndelete.Enabled = false;
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == System.Data.ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("StudentDetailsCreateOrUpdate",sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@RollID",txtrollID.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@StudentName",txtname.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Class", txtclass.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            Clear();
            if (txtrollID.Text == "")
                lblsuccessmessage.Text = "Saved Successfully ";
            else
                lblerrormessage.Text = "Updated Successfully";
            FillGridView();
        }
        void FillGridView()
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("StudentDetailsViewAll", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            gvstudent.DataSource = dtbl;
            gvstudent.DataBind();
        }
        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int rollID = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("StudentDetailsViewByID", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@RollID", rollID);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            txtrollID.Text = dtbl.Rows[0]["RollID"].ToString();
            txtname.Text = dtbl.Rows[0]["StudentName"].ToString();
            txtclass.Text = dtbl.Rows[0]["Class"].ToString();
            btnsave.Text = "Update";
            btndelete.Enabled = true;
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("StudentDetailsDeleteByID", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@RollID", Convert.ToInt32(txtrollID.Text));
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            Clear();
            FillGridView();
            lblsuccessmessage.Text = "Deleted Successfully";
        }
    }
}