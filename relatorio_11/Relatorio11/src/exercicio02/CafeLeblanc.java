package exercicio02;
import java.util.ArrayList;

public class CafeLeblanc{

    private ArrayList<ItemDoCardapio> cardapio;

    public CafeLeblanc() {
        this.cardapio = new ArrayList<>();
    }

    public void adicionar(ItemDoCardapio item){
        this.cardapio.add(item);
    }

    public void mostrarCardapio(){
        for (ItemDoCardapio item : cardapio) {
            System.out.println("- " + item.getNome() + " -- R$" +item.precoFinal());
        }
    }
}
