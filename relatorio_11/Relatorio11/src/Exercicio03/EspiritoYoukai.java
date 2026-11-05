package Exercicio03;

public class EspiritoYoukai implements Sobrenatural{

    private String nome;

    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome +" está se manifestando com o comportamento de solidão!");
    }
}
