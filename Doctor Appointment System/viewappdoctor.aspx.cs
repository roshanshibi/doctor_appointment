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
    public partial class viewappdoctor : System.Web.UI.Page
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
            obj.Doctorid = Session["Doctorid"].ToString();
            DataTable dt = obj.selectpatientbyid();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            obj.Memid= (GridView1.DataKeys[e.NewEditIndex].Value.ToString());
            obj.Doctorid = (GridView1.DataKeys[e.NewEditIndex].Value.ToString());
            obj.Doctorid = Session["Id"].ToString();
            obj.Doctorid= Session["Id"].ToString();
            obj.Id = GridView1.DataKeys[e.NewEditIndex].Value.ToString();
            Response.Redirect("prescription.aspx?Id=" + obj.Id + "");
        }


        protected void btnsearch_Click(object sender, EventArgs e)
        {
              if (txtsearchuser.Text != "")
            {
                obj.Name = txtsearchuser.Text;
                DataTable dt = obj.searchusers();
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
               
                if (dt.Rows.Count == 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('No records of patients')", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Patient details fetched')", true);
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please enter the name')", true);
            }
        }

        }

       
    }
