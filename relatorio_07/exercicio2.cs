using System;
using System.Collections.Generic;

public class Pokemon
{
    public string Especie { get; set; }
    public int Nivel { get; set; }

    public Pokemon(string especie, int nivel)
    {
        this.Especie = especie;
        this.Nivel = nivel;
    }

    public virtual void Atacar()
    {
        Console.WriteLine($"[{Especie}] usou um ataque comum!");
    }
}

public class TipoPlanta : Pokemon
{
    
    public TipoPlanta(string especie, int nivel) : base(especie, nivel)
    {
    }

    public override void Atacar()
    {
        Console.WriteLine($"[{Especie}] invocou um ataque próprio: Chicote de Vinha!");
    }
}

public class TipoEletrico : Pokemon
{
    public TipoEletrico(string especie, int nivel) : base(especie, nivel)
    {
    }

    public override void Atacar()
    {
        base.Atacar();
        Console.WriteLine($"[{Especie}] logo em seguida, soltou uma descarga elétrica absurda!");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("=== Início da Batalha de Exibição ===");

        List<Pokemon> equipe = new List<Pokemon>();

        Pokemon normal = new Pokemon("Eevee", 10);
        TipoPlanta planta = new TipoPlanta("Bulbasaur", 12);
        TipoEletrico eletrico = new TipoEletrico("Pikachu", 15);

        equipe.Add(normal);
        equipe.Add(planta);
        equipe.Add(eletrico);

    
        foreach (var pokemon in equipe)
        {
            pokemon.Atacar();
        }
        
        Console.WriteLine("=== Fim da Batalha ===");
    }
}
