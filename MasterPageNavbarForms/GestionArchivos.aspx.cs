using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageNavbarForms
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListarArchivos();
        }

        protected void btnSubirArchivo_Click(object sender, EventArgs e)
        {
            if (subirArchivo.HasFile)
            {
                var userName = Session["usuario"].ToString();
                if (!string.IsNullOrEmpty(userName))
                {
                    var path = Server.MapPath(".") + "/users/";
                    if (!Directory.Exists(path + userName)) {
                        Directory.CreateDirectory(path + userName);
                    }
                    subirArchivo.SaveAs(path + userName + "/" + subirArchivo.FileName);
                    ListarArchivos();
                }
            }
        }

        private void ListarArchivos()
        {
            if (Session["usuario"] != null)
            {
                var userName = Session["usuario"].ToString();
                if (!string.IsNullOrEmpty(userName))
                {
                    var path = Server.MapPath(".") + "/users/";
                    if (Directory.Exists(path + userName))
                    {
                        var tmpFiles = Directory.GetFiles(path + userName);
                        var files = from x in tmpFiles
                                    select new
                                    {
                                        Archivo = Path.GetFileName(x),
                                        Descargar = x
                                    };
                        gvArchivos.DataSource = files;
                        gvArchivos.DataBind();
                    }
                }
            }
        }

        protected void gvArchivos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DescargarArchivo")
            {
                var link = gvArchivos.Rows[Convert.ToInt32(e.CommandArgument)].Cells[1].Text;
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(link));
                Response.TransmitFile(link);
                Response.End();
            }
        }
    }
}