using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntity
{
    public partial class YeniYetenek : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        CbCvEntityEntities db = new CbCvEntityEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLYETENEKLER t = new TBLYETENEKLER();

            t.YETENEK = TextBox1.Text;
            t.DERECE = (byte?)Int16.Parse(TextBox2.Text);
            db.TBLYETENEKLER.Add(t);
            db.SaveChanges();
            Response.Redirect("Yeteneklerim.aspx");

        }
    }
}