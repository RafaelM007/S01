package Exercicio03;

import java.util.HashMap;

public class MapaDeAvistamentos {
    private HashMap<String, Sobrenatural> avistamentos;

    public MapaDeAvistamentos() {
        this.avistamentos = new HashMap<>();
    }

    public void registrar(String local, Sobrenatural ser){
        this.avistamentos.put(local,ser);
    }

    public void investigar(String local){
        Sobrenatural ser = this.avistamentos.get(local);
        if(ser==null){
            System.out.println("O local está tranquilo!");
        }
        else{
            ser.manifestar();
        }
    }
}
