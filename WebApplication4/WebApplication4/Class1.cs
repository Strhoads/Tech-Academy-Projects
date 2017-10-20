using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data.SqlClient;

namespace WebApplication4
{
    public void ImportDataFromExcel(string excelFilePath)
    {
        string ssqlTable = "Table1";
        string myExcelDataQuery = "Select person,address,city,state,zip from [Sheet1$]";
        try
        {
            string sexcelconnectionstring = @"provider=microsoft.jet.oledb.4.0;data source=" + excelFilePath + ";extended properties=" + "\"excel8.0;hdr=yes;\"";
            string ssqlconnectionstring = "Data Source=SAYYED;Initial Catalog=SyncDB;Integrated Security=True";

            string sclearsql = "delete from " + ssqlTable;
            SqlConnection sqlConn = new SqlConnection(ssqlconnectionstring);
            SqlCommand sqlCmd = new SqlCommand(sclearsql, sqlConn);
            sqlConn.Open();
            sqlCmd.ExecuteNonQuery();
            sqlConn.Close();
            OleDbConnection oleDbConn = new OleDbConnection(sexcelconnectionstring);
            OleDbCommand oleDbCmd = new OleDbCommand(myExcelDataQuery, oleDbConn);
            oleDbConn.Open();
            OleDbDataReader dr = oleDbCmd.ExecuteReader();
            SqlBulkCopy bulkCopy = new SqlBulkCopy(ssqlconnectionstring);
            bulkCopy.DestinationTableName = ssqlTable;
            while (dr.Read())
            {
                bulkCopy.WriteToServer(dr);
            }
            dr.Close();
            oleDbConn.Close();
            Label1.Text = "File imported into sql server.";

        }
        catch (Exception ex)
        {
            //handle 
        }
    }
}