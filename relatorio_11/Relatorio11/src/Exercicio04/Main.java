package Exercicio04;

public class Main {
    public static void main(String[] args) {
        Slime bob = new Slime("BOb");
        Mandragora tina = new Mandragora("Tina");
        Cozinheiro jose = new Cozinheiro("Jose", "Ferro");
        jose.adicionarIngrediente(bob);
        jose.adicionarIngrediente(tina);
        jose.servirBanquete();

        // Composição: a panela é criada dentro de Cozinheiro, ou seja, ela faz parte do cozinheiro, sem cozinheiro não temos panela
        // Agregação: os Mostros são usados pelo cozinheiro como ingredientes, ou seja, agregam os cozinheiros, porém podem existir sem os cozinheiros
    }
}
