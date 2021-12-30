﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntity
{
    public partial class YetenekSil : System.Web.UI.Page
    {
        CbCvEntityEntities db = new CbCvEntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"]);
            var ytnk = db.TBLYETENEKLER.Find(x);
            db.TBLYETENEKLER.Remove(ytnk);
            db.SaveChanges();

            Response.Redirect("Yeteneklerim.aspx");
        }
    }
}