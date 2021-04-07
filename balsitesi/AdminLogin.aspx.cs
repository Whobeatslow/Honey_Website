using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace balsitesi
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        string a;
        log loggir = new log();
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlCommand komut = new SqlCommand("Select * from Tbl_AdminLogin", bgl.baglanti());
            Label1.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "select count(*) from Tbl_AdminLogin where KullaniciAdmin='"+TextBox1.Text+"' and KullaniciSifre='"+TextBox2.Text+"' ";
            SqlCommand cmd = new SqlCommand(query, bgl.baglanti());
            string output = cmd.ExecuteScalar().ToString();

            if (output=="1")
            {
                a = loggir.logir();
                Session["user"] = TextBox1.Text;
                
                Response.Redirect("~/Admin.aspx?loginid="+a+"");
                
                
                Label1.Visible = true;

            }
            else
            {
                Response.Write("Giriş Başarısız");
            }
            bgl.baglanti().Close();
        }
    }
}