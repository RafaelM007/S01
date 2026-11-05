package exercicio01;

public class Main {
    public static void main(String[] args) {
        Morador madameSulliman  = new  Mago("madameSulliman","Desviar poder");
        Morador calcifer = new DemonioDoFogo("Calcifer");

        madameSulliman.apresentar();
        calcifer.apresentar();

        //Morador rafael = new Morador("Rafael");
    }
}
