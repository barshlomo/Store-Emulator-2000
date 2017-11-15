using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SignUp : System.Web.UI.Page
{
    protected string connectionString;
    protected SqlConnection connection;
    protected string commandString;
    protected SqlCommand command;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";
        connection = new SqlConnection(connectionString);

        commandString = "INSERT INTO [Users] (Password, UserName, Email) VALUES(@pass,@usrname,@email);";
        command = new SqlCommand(commandString, connection);
        command.Parameters.AddWithValue("pass", PasswordTxt.Text);
        command.Parameters.AddWithValue("usrname", UserNameTxt.Text);
        command.Parameters.AddWithValue("email", EmailTxt.Text);

        connection.Open();
        command.ExecuteNonQuery();
        connection.Close();
        Response.Redirect("");
    }
}