using System;
using System.Collections.Generic;
using System.Linq;
using BootCampExercise.Models;
using Dapper;
using MySql.Data.MySqlClient;

namespace BootCampExercise
{
    public partial class Events : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public List<EventInformation> GetEvents()
        {
            using (MySqlConnection sqlConnection = DbConnectionFactory.CreateConnection())
            {
                try
                {
                    List<EventInformation> validateUserResult = sqlConnection.Query<EventInformation>(
                        @"select id, event_name as Name from Events;").ToList();
                    return validateUserResult;
                }
                catch (Exception e)
                {
                   //Log exceptions
                    throw;
                }
            }
        }
        protected void CreateEvent_Click(object sender, EventArgs e)
        {
            using (MySqlConnection sqlConnection = DbConnectionFactory.CreateConnection())
            {
                try
                {
                    const string sql = "INSERT INTO Events (event_name) VALUES (@Name)";
                    sqlConnection.Execute(sql, new { Name = TextBox1.Text });
                    eventList.UpdateMethod = nameof(GetEvents);
                }
                catch (Exception exception)
                {
                    //Log exceptions
                    throw;
                }
            }
        }
    }
}