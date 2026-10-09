using System;

public class CombatenteDeGondor
{
    public string Nome { get; private set; }
    public string Povo { get; private set; }
    public string Posto { get; private set; }
    
    public string Armamento { get; private set; } = "Desarmado";

    public CombatenteDeGondor(string nome, string povo, string posto)
    {
        this.Nome = nome;
        this.Povo = povo;
        this.Posto = posto;
    }

    public void Equipar(string arma)
    {
        this.Armamento = arma; 
    }

    public void ApresentarUnidade()
    {
        Console.WriteLine($"\n--- Combatente: {Nome} ---");
        Console.WriteLine($"Povo: {Povo} | Posto: {Posto}");
        
      
        if (Armamento != "Desarmado")
        {
            Console.WriteLine($"Armamento: {Armamento}");
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("=== Defesa de Minas Tirith ===");

        CombatenteDeGondor combatente1 = new CombatenteDeGondor("Aragorn", "Dúnedain", "Rei");
        CombatenteDeGondor combatente2 = new CombatenteDeGondor("Faramir", "Gondor", "Capitão");
        CombatenteDeGondor combatente3 = new CombatenteDeGondor("Guarda da Cidadela", "Gondor", "Infantaria");

        combatente1.Equipar("Andúril");

		// 5. Tentativa de alterar o Posto (A linha abaixo causaria erro de compilação porque o set é private)
        // combatente2.Posto = "General";

        combatente1.ApresentarUnidade();
        combatente2.ApresentarUnidade();
        combatente3.ApresentarUnidade();
    }
}
