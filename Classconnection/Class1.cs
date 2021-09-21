using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace Classconnection
{
    public class Class1
    {
        public static SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["db"]);
        public static bool openconnection()
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }

}