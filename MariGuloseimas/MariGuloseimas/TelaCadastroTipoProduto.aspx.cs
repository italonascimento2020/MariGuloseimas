using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MariGuloseimas
{
    public partial class TelaCadastroTipoProduto : System.Web.UI.Page
    {
        private string strConexao;
        protected void Page_Load(object sender, EventArgs e)
        {
            strConexao = ConfigurationManager.ConnectionStrings["MariGuloseimasConnectionString"].ConnectionString;

            string sql = "select * from Tipo_produto";
            SqlConnection con = new SqlConnection(strConexao);
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
            DataSet dataset = new DataSet();

            sqlDataAdapter.Fill(dataset, "Tipo_Produto");
            GridView1.DataSource = dataset;
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("TelaNovoTipoProduto.aspx");
        }
        protected void Delete(int Cod_Tipo_Produto)
        {
            SqlConnection sqlConnection = new SqlConnection(strConexao);
            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("delete from [MariGuloseimas].[dbo].[Tipo_Produto] where Cod_Tipo_Produto =" + Cod_Tipo_Produto, sqlConnection);
            sqlCommand.ExecuteNonQuery();
            this.Page_Load(null, null);
        }
        protected void Delete(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Deletar")
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
        protected void Editar()
        {
            throw new NotImplementedException();
        }
        protected void Inserir()
        {
            throw new NotImplementedException();
        }
    }
}