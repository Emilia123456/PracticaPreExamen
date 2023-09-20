public class Alumnos
{
   public string Nombre{get;set;}
   public string Apellido{get;set;}
   public string Legajo{get;set;}
   public string Curso{get;set;}
    public int IdNota{get;set;}
    public int Promedio{get;set;}
    public string Especialidad{get;set;}

    public Alumnos(){}
   public Alumnos(string Nombre, string Apellido, string Legajo, string Curso, int IdNota, int Promedio, string Especialida){
        string nombre=Nombre;
        string apellido=Apellido;
        string legajo=Legajo;
        string curso=Curso; 
        int idNota=IdNota; 
        int promedio=Promedio;
        string especialidad=Especialida;
   }

}