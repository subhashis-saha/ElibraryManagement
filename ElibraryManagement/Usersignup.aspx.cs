using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ElibraryManagement
{

    public partial class Usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        // sign up button click event
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckMemberExists())
            {

                Response.Write("<script>alert('Member Already Exist with this Member ID, try other ID');</script>");
            }
            else
            {
                SignUpNewMember();
            }
        }

        // user defined method
        bool CheckMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where member_id='" + Txtusid.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void SignUpNewMember()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tbl(full_name,dob,contact_no,email,state,city,pincode,full_address,member_id,password,account_status) values(@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)", con);
                cmd.Parameters.AddWithValue("@full_name", Txtfname.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", Txtdob.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", Txtcont.Text.Trim());
                cmd.Parameters.AddWithValue("@email", Txtemail.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", Txtcity.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", Txtpinco.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", Txtfaddre.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", Txtusid.Text.Trim());
                cmd.Parameters.AddWithValue("@password", Txtpass.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}