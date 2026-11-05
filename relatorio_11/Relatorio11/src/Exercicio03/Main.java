package Exercicio03;

public class Main {
    public static void main(String[] args) {

        Alienigena ludris = new Alienigena("Ludris");
        EspiritoYoukai reikoKashimaReiko= new EspiritoYoukai("Reiko Kashima");

        MapaDeAvistamentos mapa= new MapaDeAvistamentos();
        mapa.registrar("Santa Rita",ludris);
        mapa.registrar("Estiva",reikoKashimaReiko);
        mapa.investigar("Santa Rita");
        mapa.investigar("Estiva");
        mapa.investigar("Pouso Alegre");

    }
}
