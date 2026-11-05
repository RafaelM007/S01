package exercicio01;

public class Mago extends Morador{

    private String feitico;

    public Mago(String nome, String feitico) {
        super(nome);
        this.feitico = feitico;
    }

    @Override
    public void apresentar() {
        System.out.println("Oi! Sou o(a) "+getNome()+" , e tenho o fetiço "+feitico);
    }
}
