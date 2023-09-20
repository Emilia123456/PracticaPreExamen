using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;


public static class BD
{
    private static string _connectionString = @"Server=.; DataBase=GestionAlumnos;Trusted_Connection=true";

    public static List<Alumnos> TraerAlumnos()
    {
        List<Alumnos> Lista = null;
        string SQL = "SELECT * FROM Alumnos";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            Lista = db.Query<Alumnos>(SQL).ToList();
        }
        return Lista;
    }
    public static List<Alumnos> TraerNotas()
    {
        List<Alumnos> Lista = null;
        string SQL = "SELECT * FROM Notas";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            Lista = db.Query<Alumnos>(SQL).ToList();
        }
        return Lista;
    }

     public static List<Alumnos> Desaprobados()
    {
        List<Alumnos> Lista = null;
        string SQL = "SELECT * FROM Alumnos A INNER JOIN Notas N ON N.IdNota=A.IdNota WHERE N.Nota<6";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            Lista = db.Query<Alumnos>(SQL).ToList();
        }
        return Lista;
    }

    public static List<Alumnos> Aprobados()
    {
        List<Alumnos> Lista = null;
        string SQL = "SELECT * FROM Alumnos A INNER JOIN Notas N ON N.IdNota=A.IdNota WHERE N.Nota>=6";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            Lista = db.Query<Alumnos>(SQL).ToList();
        }
        return Lista;
    }
}