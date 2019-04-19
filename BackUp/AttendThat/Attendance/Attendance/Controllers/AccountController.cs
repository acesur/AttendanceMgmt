using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Attendance.Models;
using System.Data.SqlClient;

namespace Attendance.Controllers
{
    public class AccountController : Controller
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        SqlDataReader dr;
        // GET: Account
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        void connectionString()
        {
            con.ConnectionString = "data source =DESKTOP-1GI0ER8\\SQLSERVER; database=Login; integrated security = true;";
        }
        [HttpPost]
        public ActionResult Verify(Account acc)
        {
            connectionString();
            con.Open();
            com.Connection = con;
            com.CommandText = "select * from tbl_login where username = '"+acc.Name+"' and password = '"+acc.Password+"'";
            dr = com.ExecuteReader();
            if(dr.Read())
            {
                con.Close();
               
                return Redirect("~/Dashbord.aspx");
            }
            else
            {
                con.Close();
                return View("Error");
            }
            
            
        }
    }
}