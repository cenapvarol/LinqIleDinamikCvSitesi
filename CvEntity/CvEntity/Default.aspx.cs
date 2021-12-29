using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntity
{
    public partial class Default : System.Web.UI.Page
    {
        CbCvEntityEntities db = new CbCvEntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.TBLHAKKIMDA.ToList();
            Repeater1.DataBind();

            Repeater2.DataSource = db.TBLHAKKIMDA.ToList();
            Repeater2.DataBind();

            Repeater3.DataSource = db.TBLHAKKIMDA.ToList();
            Repeater3.DataBind();
        }
    }
}