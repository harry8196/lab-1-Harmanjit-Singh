using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageLab
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                Session["lblarrivaldate"] = txtArrivalDate.Text;
                Session["lbldeparturedate"] = txtDepartureDate.Text;
                Session["lblnumofpeople"] = ddlnumofpeople.Text;
                Session["lblradiobtn"] = RadioButtonList1.Text;
                Session["lblspecialrequest"] = txtSpecialRequest.Text;
                Session["lblfistname"] = txtFirstName.Text;
                Session["lbllastname"] = txtLastname.Text;
                Session["lblemail"] = txtEmail.Text;
                Session["lblnumber"] = txtNumber.Text;
                Session["lblpreferred"] = ddlPreferred.Text;

                
            }
        }
      
        

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
     
                Response.Redirect("Confirm.aspx");


            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            ValidationSummary1.EnableViewState = false;
            txtArrivalDate.Text = "";
            txtDepartureDate.Text = "";
            txtSpecialRequest.Text = "";
            txtFirstName.Text = "";
            txtLastname.Text = "";
            txtEmail.Text = "";
            txtNumber.Text = "";
            ddlPreferred.Text = "";
            txtArrivalDate.Focus();

        }
    }


}