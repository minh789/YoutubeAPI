using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TayThien_API
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //int isLogin = 0;
            //if (Session["isLogin"] != null)
            //{
            //    isLogin = (int)Session["isLogin"];
            //}
            //if (isLogin == 0)
            //{
            //    Response.Redirect("Login.aspx");
            //}
        }

        protected void btnLogut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}