package Exercicio04;

public class Mandragora extends Monstro{
    public Mandragora(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Separe o coração em pedaços pequenos e aqueça em fogo alto por 30 min. Depois tempere com sal e pimenta!";
    }
}
