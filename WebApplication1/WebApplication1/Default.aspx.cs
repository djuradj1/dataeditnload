using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Proizvodi p = new Proizvodi();

           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString4"].ToString());
            SqlCommand cmd = new SqlCommand();
            
            cmd.CommandText = "INSERT INTO Proizvod (name , description, category, factory, retailer, price) VALUES ('"+naziv.Text+"','"+opis.Text+"','"+kategorija.Text+"','"+fabrika.Text+"','"+prodavac.Text+"',"+cijena.Text+");";
            cmd.Connection = conn;

            conn.Open();

            cmd.ExecuteNonQuery();

            conn.Close();

            GridView1.DataBind();

            
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            if (DropDownList1.SelectedValue.Equals("SQL DATABASE"))
            {
                //BIRANJEM IZ DROPDOWNLISTE CE SE U GRIDVIEW PRIKAZIVATI podaci iz SQL ili JSON
            }
            else if (DropDownList1.SelectedValue.Equals("JSON"))

            {
                
               // GridView1.DataSource = jsonDataTable();
                //GridView1.DataBind();
                

            }
        }

        public DataTable jsonDataTable()
        {
            string jsonString = "C:/Users/Djuka/source/repos/WebApplication1/WebApplication1/proizvodi.json";
           StreamReader file = new StreamReader(jsonString);
          //StreamReader file = new StreamReader(Server.MapPath("~/Test.json"));

            string json = file.ReadToEnd();
            //DataTable table =(DataTable) JsonConvert.DeserializeObject(json,typeof(DataTable));
            var x = JsonConvert.DeserializeObject(json , typeof(DataTable));

            DataTable table = (DataTable) x;

            
            return table;


        }
        



    }

}


