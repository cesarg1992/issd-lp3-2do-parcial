using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageNavbarForms
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Session["usuario"] = txtUserName.Text;
            var cookie = new HttpCookie("pass", txtPass.Text);
            cookie.Expires = DateTime.Now;
            Response.Cookies.Add(cookie);

            txtConfirmar.Text = string.Empty;
            txtPass.Text = string.Empty;
            txtUserName.Text = string.Empty;
            txtCorreo.Text = string.Empty;
            txtEdad.Text = string.Empty;
            
            Response.Redirect("Default.aspx");
        }
    }
}