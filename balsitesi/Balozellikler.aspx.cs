using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace balsitesi
{
    public partial class Balozellikler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            
                SqlCommand komut = new SqlCommand("Select * From Tbl_Bal", bgl.baglanti());
                SqlDataReader read = komut.ExecuteReader();
                DataList2.DataSource = read;
                DataList2.DataBind();
            
                
            }

        }
    }
