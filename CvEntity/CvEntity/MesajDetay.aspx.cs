using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntity
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        CbCvEntityEntities db = new CbCvEntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            int x = int.Parse(Request.QueryString["ID"]);
            var deger = db.TBLILETISIM.Find(x);
            TextBox1.Text = deger.MESAJ;
            TextBox2.Text = deger.ADSOYAD;
            TextBox3.Text = deger.KONU;


        }
    }
}