package Exercicio04;

import java.util.ArrayList;

public class Cozinheiro {
    private String nome;
    private Panela panela;
    private ArrayList<Monstro> ingredientes;

    public Cozinheiro(String nome, String materiaDaPanela) {
        this.nome = nome;
        this.panela = new Panela(materiaDaPanela);
        this.ingredientes = new ArrayList<>();
    }

    public void adicionarIngrediente(Monstro monstro){
        this.ingredientes.add(monstro);
    }

    public void servirBanquete(){
        System.out.println("Cozinheiro: "+this.nome+ "--- Material da Panela: "+this.panela.getMaterial());
        for(Monstro ingrediente : ingredientes) {
            System.out.println("Nome: " + ingrediente.getNome() +"-- Receita: "+ingrediente.receita());
        }
    }

}
