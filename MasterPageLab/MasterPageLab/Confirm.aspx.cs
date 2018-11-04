using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageLab
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            lblarrivaldate.Text = Session["lblarrivaldate"].ToString();
            lbldeparturedate.Text = Session["lbldeparturedate"].ToString();
            lblpeople.Text = Session["lblnumofpeople"].ToString();
            lblbedtype.Text = Session["lblradiobtn"].ToString();
            lblspecialmote.Text = Session["lblspecialrequest"].ToString();
            lblfullname.Text = Session["lblfirstname"].ToString() +" "+ Session["lbllastname"].ToString();
            lblemail.Text = Session["lblemail"].ToString();
            lblnumber.Text = Session["lblnumber"].ToString();
            lblpayment.Text = Session["lblpreferred"].ToString();
            

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Label1.Text = "Thank You For Your Request.";
            Label2.Text = "We will get back to you within 24 Hours.";
        }

    }
}