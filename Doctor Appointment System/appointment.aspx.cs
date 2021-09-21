using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using doctorappointmentdll;


namespace Doctor_Appointment_System
{
    public partial class appointment : System.Web.UI.Page
    {
        clsinsert obj = new clsinsert();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridfill();
                
            }
        }
        public void gridfill()
        {
            DataTable dt = obj.viewdoctor();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

            if(Session["Id"] ==null)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('You must login first')</script>", false);
            }
            else
            {
                obj.Doctorid=(GridView1.DataKeys[e.NewEditIndex].Value.ToString());
                obj.Memid = Session["Id"].ToString();
               // TextBox tb = (TextBox)GridView1.Rows[0].FindControl("txtdate");
               // TextBox tb = (TextBox)GridView1.SelectedRow.FindControl("txtdate");
                TextBox name = ((TextBox)GridView1.Rows[e.NewEditIndex].FindControl("txtdate"));
                obj.Time = string.Format("{0:HH:mm:ss tt}", DateTime.Now);
                obj.Status = "Pending";
                obj.Date = DateTime.Today.ToString();
                obj.Bookingdate = name.Text;
                obj.Bdate = "";
                int res = obj.booking();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('Booked Successfully')</script>", false);

            }
        }

        protected void btnsearchdoctor_Click(object sender, EventArgs e)
        {

            if (txtsearchdoctor.Text!= "")
            {

                obj.Name = txtsearchdoctor.Text;
                obj.Deptname= txtsearchdoctor.Text;
                DataTable dt = obj.searchdoctors();
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }

                if (dt.Rows.Count == 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('No doctors')", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Details fetched')", true);

                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Enter name to search')", true);
            }
            
            }
       
        }
    }

