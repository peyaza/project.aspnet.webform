using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void butttonClick(object sender, EventArgs e)
    {
        string connectionString = "data source=DESKTOP-EHSGBHB; initial catalog=SchoolDemo; integrated security=true";
        SqlConnection conn = new SqlConnection(connectionString);
        conn.Open();

        string Query = "INSERT INTO tbl_student Values('" + txtStdName.Text + "','" + txtAddress.Text + "','" + txtPhone.Text + "','" + txtGender.Text + "', '" + txtMarital.SelectedItem + "', '" + txtbirth.Text + "','" + txtDate.Text + "')";

        SqlCommand cmd = new SqlCommand(Query, conn);
        cmd.ExecuteNonQuery();




        txtStdName.Text = "";
        txtAddress.Text = "";
        txtPhone.Text = "";
        txtGender.Text = "";
        txtMarital.Text = "";
        txtbirth.Text = "";
        txtDate.Text = "";
    }


   
}