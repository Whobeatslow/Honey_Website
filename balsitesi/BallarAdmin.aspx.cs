using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace balsitesi
{
    public partial class BallarAdminaspx : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        string islem = "";
        string log = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            log = Request.QueryString["loginid"];
            if (log == "1")
            {
                if (Page.IsPostBack == false)
                {
                    id = Request.QueryString["Balid"];
                    islem = Request.QueryString["islem"];
                }
                SqlCommand komut = new SqlCommand("Select * from Tbl_Bal", bgl.baglanti());
                SqlDataReader dr = komut.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
                Panel2.Visible = false;
                Panel5.Visible = false;

                SqlCommand komut2 = new SqlCommand("Select * from tbl_Cesitler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "CesitAd";
                DropDownList1.DataValueField = "Cesitid";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();

                if (islem == "sil")
                {
                    SqlCommand komutsil = new SqlCommand("delete from Tbl_Bal where Balid=@p1", bgl.baglanti());
                    komutsil.Parameters.AddWithValue("@p1", id);
                    komutsil.ExecuteNonQuery();
                    bgl.baglanti().Close();
                }
            }
            else
            {
                Response.Redirect("~/AdminLogin.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            try
            {
                        FileUpload1.SaveAs(Server.MapPath("/Resimler/"+FileUpload1.FileName));
                        SqlCommand komut = new SqlCommand("insert into Tbl_Bal (BalAd,BalOzellik,BalResim,BalFiyat,Cesitid) values (@p1,@p2,@p3,@p4,@p5)", bgl.baglanti());
                        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
                        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
                        komut.Parameters.AddWithValue("@p3", "~/Resimler/"+FileUpload1.FileName);
                        komut.Parameters.AddWithValue("@p4", TextBox3.Text);
                        komut.Parameters.AddWithValue("@p5", DropDownList1.SelectedValue);

                        komut.ExecuteNonQuery();
                        bgl.baglanti().Close();
            }
            catch (Exception)
            {

                string script = "alert(\"RESİM DOSYASINI BOŞ BIRAKAMAZSINIZ!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            
        }
    }
}
