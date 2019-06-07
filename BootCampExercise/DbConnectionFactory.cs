using MySql.Data.MySqlClient;

namespace BootCampExercise
{
    public static class DbConnectionFactory
    {
        public static MySqlConnection CreateConnection()
        {
            var connectionString = "Server=db-workshop.public-dev.zuto.cloud;Port=3306;Database=bootcamp10;Uid=bootcamp10;Pwd=OriginNorthern;";
            return new MySqlConnection(connectionString);
        }
    }
}