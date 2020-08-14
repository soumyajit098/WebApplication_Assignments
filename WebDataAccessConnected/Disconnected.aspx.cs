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
    public partial class Disconnected : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=SOUMYAJIT;Initial" +
                " Catalog=JulDotNetBatch2020;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from EmployeeTb1", conn);
            SqlCommand cmd1 = new SqlCommand("select * from BookTable", conn);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);

            DataSet ds = new DataSet();

            da.Fill(ds, "Employee");   //we can give any other name or same as the database
            da1.Fill(ds, "Book");
            GridView3.DataSource = ds.Tables[0];   //ds is the collection of tablek as there is only a single tab so its 0
            ///*GridView3.DataSource = ds.Tables["Employee"];*/   //we are retriving the table i.e EmployeeTb1
            GridView3.DataBind();
            GridView2.DataSource = ds.Tables[1];
            GridView2.DataBind();


        }
    }
}