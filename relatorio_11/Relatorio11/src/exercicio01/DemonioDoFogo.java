package exercicio01;

public class DemonioDoFogo extends Morador{
    public DemonioDoFogo(String nome) {
        super(nome);
    }

    @Override
    public void apresentar() {
        System.out.println("Oi! Sou o(a) "+getNome()+" , e faço o castelo andar!!");
    }
}
