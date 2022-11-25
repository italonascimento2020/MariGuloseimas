using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MariGuloseimas
{
    public partial class TelaCadastroProduto : System.Web.UI.Page
    {
        private string strConexao;
        protected void Page_Load(object sender, EventArgs e)
        {
            strConexao = ConfigurationManager.ConnectionStrings["MariGuloseimasConnectionString"].ConnectionString;

            string sql = "select * from Produto";
            SqlConnection con = new SqlConnection(strConexao);
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
            DataSet dataset = new DataSet();

            sqlDataAdapter.Fill(dataset, "Produto");
            GridView1.DataSource = dataset;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("TelaNovoProduto.aspx");
        }

        protected void Delete(int Cod_Prod)
        {
            SqlConnection sqlConnection = new SqlConnection(strConexao);
            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("delete from [MariGuloseimas].[dbo].[Produto] where Cod_Prod =" + Cod_Prod, sqlConnection);
            sqlCommand.ExecuteNonQuery();
            this.Page_Load(null, null);

        }

        protected void Delete(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Deletar")
            {
                this.Delete(Convert.ToInt32(e.CommandArgument));
            }
            else if (e.CommandName == "Editar")
            {
                this.Editar();
            }
            else if (e.CommandName == "Inserir")
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