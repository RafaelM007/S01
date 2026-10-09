using System;
using System.Collections.Generic;


public class EntidadeCosmica
{
    public string Nome { get; set; }
    public string Origem { get; set; } = "Desconhecida"; 
    public EntidadeCosmica(string nome)
    {
        this.Nome = nome;
    }

    public virtual void Manifestar()
    {
        Console.WriteLine($"\n--- Entidade: {Nome} ---");
        
        if (Origem != "Desconhecida")
        {
            Console.WriteLine($"Origem conhecida: {Origem}");
        }
    }
}

public class Profundo : EntidadeCosmica
{
    public Profundo(string nome) : base(nome)
    {
    }

    public override void Manifestar()
    {
        Console.WriteLine($"\n--- Entidade: {Nome} ---");
        Console.WriteLine("O Profundo emerge das profundezas abissais entoando cânticos sombrios!");
    }
}

public class MiGo : EntidadeCosmica
{
    public MiGo(string nome) : base(nome)
    {
    }

    public override void Manifestar()
    {
        base.Manifestar();
        Console.WriteLine("Um zumbido alienígena ressoa enquanto o Mi-Go voa pelas correntes estelares.");
    }
}

public class Pesquisador
{
    public string Nome { get; set; }

    private List<EntidadeCosmica> _catalogo;

    public Pesquisador(string nome)
    {
        this.Nome = nome;
        this._catalogo = new List<EntidadeCosmica>();
    }

    public void Catalogar(EntidadeCosmica e)
    {
        this._catalogo.Add(e);
    }

    public void LerCatalogo()
    {
        Console.WriteLine($"\n=== Catálogo de Pesquisa: {Nome} ===");
        
        foreach (var entidade in _catalogo)
        {
            entidade.Manifestar();
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("=== Biblioteca da Universidade Miskatonic ===");

        Profundo dagon = new Profundo("Dagon");
        MiGo fungoYuggoth = new MiGo("Fungo de Yuggoth");
        EntidadeCosmica cthulhu = new EntidadeCosmica("Cthulhu"); 

        fungoYuggoth.Origem = "Planeta Yuggoth";

        Pesquisador drArmitage = new Pesquisador("Dr. Henry Armitage");

        drArmitage.Catalogar(cthulhu);
        drArmitage.Catalogar(dagon);
        drArmitage.Catalogar(fungoYuggoth);
        drArmitage.LerCatalogo();
    }
}
