using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TayThien_API
{
    public partial class Resigner : System.Web.UI.Page
    {
        LoginDataContext lt =new LoginDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            if (usernameTB.Text.Equals("") || passInput.Text.Equals("") || ConfirmPasswordTB.Equals(""))
            {
                lblThongBao.Text = "Bạn phải điền đầy đủ thông tin";
                usernameTB.Text = "";
                passInput.Text = "";
                ConfirmPasswordTB.Text = "";
                usernameTB.Focus();
            }
            else if (ConfirmPasswordTB.Text != passInput.Text)
            {
                lblThongBao.Text = "Mật khẩu xác nhận không đúng vui lòng nhập lại";
                usernameTB.Text = "";
                passInput.Text = "";
                ConfirmPasswordTB.Text = "";
                usernameTB.Focus();
            }
            else
            {
                lt.USP_Resigner(usernameTB.Text, passInput.Text);
                Response.Redirect("Login.aspx");

            }
        }
    }
}