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
    public partial class viewdept : System.Web.UI.Page
    {
        clsinsert ci=new clsinsert();
        protected void Page_Load(object sender, EventArgs e)
        {
             if (!IsPostBack)
            {
                gridfill();
            }

        } 
        public void gridfill()
        {
            DataTable dt = ci.selectdept();
            if(dt.Rows.Count>0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            ci.Id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            int a = ci.deletedept();
            if (a == 1)
            {
                gridfill();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Successfully deleted')", true);
            }

        }

          protected void btnsearchdept_Click(object sender, EventArgs e)
        {
              if(txtsearchdept.Text!= "")
              {
                  ci.Deptname = txtsearchdept.Text;
                  DataTable dt = ci.searchdept();
                  if (dt.Rows.Count > 0)
                  {
                      GridView1.DataSource = dt;
                      GridView1.DataBind();
                  }

                  if (dt.Rows.Count == 0)
                  {
                      ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('No such departments')", true);
                  }
                  else
                  {
                      ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Details fetched')", true);

                  }
              }
              else
              {
                  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Enter dept name to search')", true);
              }
        }

      

      
        }
    }
