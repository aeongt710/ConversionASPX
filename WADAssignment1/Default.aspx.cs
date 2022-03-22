using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WADAssignment1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fromBase = string.IsNullOrEmpty(Request["fromBase"]) ? "x" : Request["fromBase"];
            string toBase = string.IsNullOrEmpty(Request["toBase"]) ? "x" : Request["toBase"];
            string number = string.IsNullOrEmpty(Request["number"]) ? "x" : Request["number"];
            if(fromBase != "x" && toBase != "x" && number!="x")
            {
                int v1 = Int16.Parse(fromBase);
                int v2 = Int16.Parse(toBase);
                OutputValue.Text = Convert.ToString(Convert.ToInt32(number, v1), v2);
            }

        }

        protected void btnTest_Click(object sender, EventArgs e)
        {
            NameValueCollection nvclc = Request.Form;
            string fromBase = nvclc["DropDownList1"];
            string toBase = nvclc["DropDownList2"];
            string number = nvclc["TextBox1"];
            Response.Redirect("Default.aspx?fromBase=" +fromBase+"&toBase="+toBase+"&number="+ number);

        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            OutputValue.Text = "";

        }

    }
}