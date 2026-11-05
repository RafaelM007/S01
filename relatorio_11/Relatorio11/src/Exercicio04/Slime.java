package Exercicio04;

public class Slime extends Monstro {
    public Slime(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Misture dois dedos do mostro com água fervente. Adicione macarrão e molho de tomate!";
    }
}
