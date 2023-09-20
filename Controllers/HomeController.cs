using System.Diagnostics;
using System.Reflection.Metadata;
using Microsoft.AspNetCore.Mvc;
using PracticaPreExamen.Models;

namespace PracticaPreExamen.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        List<Alumnos> ListaAlumnos = BD.TraerAlumnos();
        ViewBag.LAlumnos = ListaAlumnos; 
        return View();
    }

    public IActionResult VerDetalleAlumno(string legajo)
    {
        List<Alumnos> ListaAlumnos = BD.TraerAlumnos();
        ViewBag.LAlumnos = ListaAlumnos; 
        List<Alumnos> ListaNotas = BD.TraerNotas();
        ViewBag.LNotas = ListaNotas; 
        ViewBag.gajo=legajo;
        return View();

    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
