package Exercicio03;

public class Alienigena implements Sobrenatural {

    private String nome;

    public Alienigena(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome+" está se manifestando com o comportamento de frieza!");
    }
}
