using System;
using System.Collections.Generic;


public class Grimorio
{
    public string FeiticoFavorito { get; set; } = "Nenhum";

    public void Abrir()
    {
        Console.WriteLine($"\nO grimório foi aberto. Feitiço favorito: {FeiticoFavorito}");
    }
}


public class Companheiro
{
    public string Nome { get; set; }
    public string Funcao { get; set; }

    public Companheiro(string nome, string funcao)
    {
        this.Nome = nome;
        this.Funcao = funcao;
    }

    public void Apresentar()
    {
        Console.WriteLine($"- {Nome}, o(a) {Funcao}");
    }
}

public class Maga
{
    public string Nome { get; set; }
    
    public Grimorio MeuGrimorio { get; set; }
    
    private List<Companheiro> _grupo;

    public Maga(string nome)
    {
        this.Nome = nome;
        
        this.MeuGrimorio = new Grimorio();
        this._grupo = new List<Companheiro>();
    }

    public void Recrutar(Companheiro c)
    {
        this._grupo.Add(c);
    }

    public void MostrarGrupo()
    {
        Console.WriteLine($"\nGrupo da maga {Nome}:");
        foreach (var comp in _grupo)
        {
            comp.Apresentar();
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("=== Jornada da Frieren ===");

        Companheiro fern = new Companheiro("Fern", "Maga Aprendiz");
        Companheiro stark = new Companheiro("Stark", "Guerreiro");

        Maga frieren = new Maga("Frieren");

        frieren.Recrutar(fern);
        frieren.Recrutar(stark);

        frieren.MeuGrimorio.FeiticoFavorito = "Zoltraak";

        frieren.MostrarGrupo();
        frieren.MeuGrimorio.Abrir();

        /* 
          Explicação que pediu na questão:
           -> composicao : Acontece entre a classe 'Maga' e a classe 'Grimorio'. 
             O Grimorio foi instanciado diretamente no construtor da Maga (`this.MeuGrimorio = new Grimorio();`). 
             Se o objeto da Maga for destruído, o seu Grimório também será, indicando uma dependência forte (relação "todo-parte")
           -> Acontece entre a classe 'Maga' e a classe 'Companheiro' 
             Os companheiros (Fern e Stark) foram criados na Main de forma totalmente independente e apenas 
             adicionados à lista da Maga com o método 'Recrutar()'. Eles existem por si só e não são 
             destruídos se o grupo da Maga acabar (dependência fraca).
        */
    }
}
