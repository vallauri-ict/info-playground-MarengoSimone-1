using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace _13_Studenti_StoredProcedure_
{
    public partial class Form1 : Form
    {
        private static readonly string CONNECTION_STRING = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\gsalt\Desktop\info-playground\13-Studenti[StoredProcedure]\dbStudenti.mdf;Integrated Security=True;Connect Timeout=30";
        public Form1()
        {
            InitializeComponent();
        }

        private void btnProcedure_Click(object sender, EventArgs e)
        {
            string sql = "cercaStudenti";
            using (SqlConnection con = new SqlConnection(CONNECTION_STRING))
            {
                con.Open();

                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    SqlParameter inputClasse = new SqlParameter();
                    inputClasse.Value = txtClasse.Text;
                    inputClasse.ParameterName = "inputClasse";
                    inputClasse.Direction = ParameterDirection.Input;
                    inputClasse.DbType = DbType.String;
                    inputClasse.Size = 5;
                    cmd.Parameters.Add(inputClasse);

                    SqlParameter outputNome = new SqlParameter();
                    outputNome.ParameterName = "outputNome";
                    outputNome.Direction = ParameterDirection.Output;
                    outputNome.DbType = DbType.String;
                    outputNome.Size = 50;
                    cmd.Parameters.Add(outputNome);

                    SqlParameter outputCognome = new SqlParameter();
                    outputCognome.ParameterName = "outputCognome";
                    outputCognome.Direction = ParameterDirection.Output;
                    outputCognome.DbType = DbType.String;
                    outputCognome.Size = 50;
                    cmd.Parameters.Add(outputCognome);

                    SqlParameter outputTelefono = new SqlParameter();
                    outputTelefono.ParameterName = "outputTelefono";
                    outputTelefono.Direction = ParameterDirection.Output;
                    outputTelefono.DbType = DbType.String;
                    outputTelefono.Size = 10;
                    cmd.Parameters.Add(outputTelefono);

                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        string s = "";

                        for (int i = 0; i < reader.FieldCount; i++)
                        {
                            s += reader.GetValue(i) + " ";
                        }
                        MessageBox.Show(s, "Elenco Studenti");
                    }
                    reader.Close();

                    string student = cmd.Parameters["outputNome"].Value.ToString() + " " +
                    cmd.Parameters["outputCognome"].Value.ToString() + " - " + cmd.Parameters["outputTelefono"].Value.ToString();
                    MessageBox.Show("Studente più giovane: " + student);
                }
            }
        }
    }
}
