using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebDataAccessConnected
{

    public partial class ConnectedObjects : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=SOUMYAJIT;Initial" +
                " Catalog=JulDotNetBatch2020;Integrated Security=True");
        SqlCommand cmd;
        SqlDataReader dr;
        DataTable dt;
        public void ShowGrid()
        {
            conn.Open();  //keeping the conc open

            cmd = new SqlCommand("select * from EmployeeTb1", conn);
            dr = cmd.ExecuteReader();
            dt = new DataTable();   //Empty data table  //this is an in memory data table
            dt.Load(dr);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            dr.Close();
            conn.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowGrid();
            }



            
            //while (dr.Read())
            //{
            //    GridView1.DataSource = dr;
            //    DropDownList1.DataSource = dr[1];  //indexer  coloumn index is 1
                
                
            //    DropDownList1.DataBind();
            //    GridView1.DataBind();
            //}         //some rows are not visible in the datatable so we dont use this method
            
            
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //not to write anything
        }

        protected void btnInsertEmp_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("insert into EmployeeTb1 (EmpName,EmpSal) values('" + txtEmpName.Text + "'," + txtEmpSalary.Text + ")", conn);
            ///Sql injection occured
            int x=cmd.ExecuteNonQuery();

            
            conn.Close();
            ShowGrid();    //Select Query
        }

        protected void btnUpdatePara_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("Update EmployeeTb1 set empName=@empName,empSal=@empSal where " +
                "empId=@empId ", conn);
            cmd.Parameters.Add("@empId", SqlDbType.Int).Value = Convert.ToInt32(txtEmpId.Text);
            cmd.Parameters.Add("@empName", SqlDbType.VarChar,20).Value =txtEmpName.Text;
            cmd.Parameters.Add("@empSal", SqlDbType.Float).Value = Convert.ToSingle(txtEmpSalary.Text);
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("alert(one row updated)");
            }
            conn.Close();
            ShowGrid();
        }

        protected void btnDeleteWithSp_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("sp_DeleteEmp",conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@empid", SqlDbType.Int).Value =
                Convert.ToInt32(txtEmpId.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            ShowGrid();

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("sp_SearchEmp", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@empid", SqlDbType.Int).Value =
                Convert.ToInt32(txtEmpId.Text);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtEmpName.Text = dr[0].ToString();
                txtEmpSalary.Text = dr["empSal"].ToString();
            }
            else
            {
                Label1.Text = "PLEASE ENTER CORRECT EMP ID";
                //txtEmpName.Text = "NOT EXISTS";
                //txtEmpSalary.Visible = false;
            }
            dr.Close();
            conn.Close();
           
        }

        protected void btnInsertPara_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("insert into EmployeeTb1 (EmpName,EmpSal) values(@EmpName, @EmpSal)",conn);
            cmd.Parameters.AddWithValue("@EmpName",txtEmpName.Text);
            cmd.Parameters.AddWithValue("@EmpSal",txtEmpSalary.Text);
 
            cmd.ExecuteNonQuery();
            conn.Close();
            ShowGrid();
        }

        protected void btnInsertSp_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("sp_InsertEmp", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@EmpName", txtEmpName.Text);
            cmd.Parameters.AddWithValue("@EmpSal", txtEmpSalary.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            ShowGrid();
        }

        protected void btnUpdateEmp_Click(object sender, EventArgs e)
       {
            conn.Open();
            cmd = new SqlCommand("Update EmployeeTb1 set Empname='" + txtEmpName.Text + "',EmpSal='" + txtEmpSalary.Text + "' where EmpId='" + txtEmpId.Text + "'", conn);

            cmd.ExecuteNonQuery();
            conn.Close();
            ShowGrid();
        }

        protected void btnUpdateSp_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("sp_UpdateEmp", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@EmpId", SqlDbType.Int).Value = Convert.ToInt32(txtEmpId.Text);
            cmd.Parameters.AddWithValue("@EmpName", txtEmpName.Text);
            cmd.Parameters.AddWithValue("@EmpSal", txtEmpSalary.Text);

            cmd.ExecuteNonQuery();        
            conn.Close();
            ShowGrid();
        }

        protected void btnDelWithPara_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("delete from EmployeeTb1  where empId=@EmpId", conn);
            cmd.Parameters.Add("@empId", SqlDbType.Int).Value = Convert.ToInt32(txtEmpId.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            ShowGrid();
        }

        protected void btnDelEmp_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from EmployeeTb1   where EmpId='" + txtEmpId.Text + "'", conn);

            cmd.ExecuteNonQuery();
            conn.Close();
            ShowGrid();
        }
    }
}