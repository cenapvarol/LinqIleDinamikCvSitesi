using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntity
{
    public partial class YetenekGuncelle : System.Web.UI.Page
    {
        CbCvEntityEntities db = new CbCvEntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["ID"]);
            if(Page.IsPostBack == false)
            {
            var ytkn = db.TBLYETENEKLER.Find(id);
             TextBox1.Text = ytkn.YETENEK;
            string dereceStgt = ytkn.DERECE.ToString();
            TextBox2.Text = dereceStgt;
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            int id = int.Parse(Request.QueryString["ID"]);
            var degere = db.TBLYETENEKLER.Find(id);
            degere.YETENEK = TextBox1.Text;
            degere.DERECE = (byte?)int.Parse(TextBox2.Text);
            db.SaveChanges();
            Response.Redirect("Yeteneklerim.aspx");


        }
    }
}