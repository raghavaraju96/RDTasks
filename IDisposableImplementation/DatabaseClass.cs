using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace IDisposableImplementation
{
    class DatabaseClass:IDisposable
    {
        private SqlConnection sqlConnection = null;
        private SqlDataReader dataReader = null;
        private DataTable dataTable = null;

        ~DatabaseClass()
        {
            Dispose(false);
        }
        private SqlConnection SettingConnection(string connectionString)
        {
            sqlConnection = new SqlConnection(connectionString);
            return sqlConnection;
        }

        private DataTable SettingData(string connectionString)
        {
            dataTable = new DataTable();
            sqlConnection = SettingConnection(connectionString);
            sqlConnection.Open();
            SqlCommand command = new SqlCommand("select * from ExcelSheet", sqlConnection);
            dataReader = command.ExecuteReader();
            dataTable.Load(dataReader);
            return dataTable;
        }

        public void DisplayDetails(string ConnectionString)
        {
            dataTable = SettingData(ConnectionString);
            foreach (DataRow dataRow in dataTable.Rows)
            {
                foreach (Object obj in dataRow.ItemArray)
                {
                    Console.Write(obj.ToString() + "  ");
                }
                Console.WriteLine();
            }
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
        protected virtual void Dispose(bool disposing)
        {

            if (sqlConnection != null)
            {
                this.sqlConnection.Dispose();
                this.sqlConnection = null;
                Console.WriteLine("SQL Connection Disposed");
            }
            if (dataReader != null)
            {
                this.dataReader = null;
                Console.WriteLine("Data Reader Disposed");
            }
            if (dataTable != null)
            {
                this.dataTable.Dispose();
                this.dataTable = null;
                Console.WriteLine("DataTable Disposed");
            }
        }
    }
}
