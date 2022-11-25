using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MariGuloseimas
{
    public partial class TelaAgoraVai : System.Web.UI.Page
    {
        private string strConexao;
        protected void Page_Load(object sender, EventArgs e)
        {
            strConexao = ConfigurationManager.ConnectionStrings["MariGuloseimasConnectionString"].ConnectionString;
             
            string sql = "select * from Cliente";
            SqlConnection con = new SqlConnection(strConexao);
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
            DataSet dataSet = new DataSet();

            sqlDataAdapter.Fill(dataSet, "Cliente");
            GridView1.DataSource = dataSet;
            GridView1.DataBind();
             
        } 

        protected void Delete(int Cod_Cliente)
        {   

            SqlConnection sqlConnection = new SqlConnection(strConexao);

            sqlConnection.Open();

            SqlCommand sqlCommand = new SqlCommand("delete from [MariGuloseimas].[dbo].[Cliente] where Cod_Cliente =" + Cod_Cliente, sqlConnection);

            sqlCommand.ExecuteNonQuery();

            this.Page_Load(null, null);
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Deletar")
            {
                this.Delete(Convert.ToInt32(e.CommandArgument)); 
            }
            else if(e.CommandName == "Editar")
            {
                this.Editar();
            }
            else if(e.CommandName == "Inserir")
            {
                this.Inserir();
            }
        }

        private void Inserir()
        {
            throw new NotImplementedException();
        }

        private void Editar()
        {
            throw new NotImplementedException();
        }
    }
}