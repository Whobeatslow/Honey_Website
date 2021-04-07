using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace balsitesi
{
    public partial class Admin : System.Web.UI.Page
    {
        log loggir = new log();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["loginid"];
            if (id == loggir.logir())
            {
                
            }
            else
            {
                Response.Redirect("~/AdminLogin.aspx?");
            }
        }
    }
}