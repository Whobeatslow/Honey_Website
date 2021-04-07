using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace balsitesi
{
    public class sqlsinif
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection (@"Data Source=WHOBEATSLOW\SQLEXPRESS02;Initial Catalog=Tbl_Bal;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}