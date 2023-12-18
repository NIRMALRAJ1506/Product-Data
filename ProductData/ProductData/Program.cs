using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProductData
{
    internal class Program
    {
        static SqlConnection con;
        static SqlCommand cmd;
        static SqlDataReader reader;
        static string constr = "server=DESKTOP-Q04HI42\\SQLEXPRESS;database=Assessment8;trusted_connection=true;";
        static void Main(string[] args)
        {
            try
            {
                con = new SqlConnection(constr);
                cmd = new SqlCommand("SELECT TOP 5 * FROM Products ORDER BY PName DESC", con);
                con.Open();
                reader = cmd.ExecuteReader();
                Console.WriteLine("PId\t PName\t PPrice\t\t MnfDate\t\t ExpDate");
                while (reader.Read()) 
                {
                    Console.Write(reader["PId"]+"\t");
                    Console.Write(reader["PName"] + "\t");
                    Console.Write(reader["PPrice"]+"\t");
                    Console.Write(reader["MnfDate"] + "\t");
                    Console.Write(reader["ExpDate"] + "\t");
                    Console.WriteLine("\n");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error!!!"+ex.Message);
            }
            finally
            {
                con.Close();
                Console.ReadKey();
            }
        }
    }
}
