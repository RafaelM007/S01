package exercicio02;

public class Main {
    public static void main(String[] args) {
        ItemDoCardapio cafe = new ItemDoCardapio("Café",4.00);
        ItemDoCardapio monster = new ItemDoCardapio("Monster",12.00);

        ComboLeblanc comboEstudante = new ComboLeblanc("Combo Estudante",14.00);

        CafeLeblanc cafeteria = new CafeLeblanc();

        cafeteria.adicionar(cafe);
        cafeteria.adicionar(monster);
        cafeteria.adicionar(comboEstudante);
        cafeteria.mostrarCardapio();
    }
}
