class Pistola {
   
    constructor(modelo) {
        this.modelo = modelo;
    }
}

class AgenteProtocolo{

    #pistola;

    constructor(codinome, modeloDaPistola) {
        this.codinome = codinome;
        this.#pistola = new Pistola(modeloDaPistola);
    }

    usarHabilidade(){
        throw new Error(`É necessário implementar o metpodo usarHabilidade!`);
    }

    entrarEmCombate(){
       console.log(`${this.codinome} entrou em combate com a pistola ${this.#pistola.modelo}! ${this.usarHabilidade()}`);
    }
}
    
class Controlador extends AgenteProtocolo{
    usarHabilidade(){
        return `Usou a habilidade Nebulosa!`
    }
}

class Iniciador extends AgenteProtocolo{
    usarHabilidade(){
        return `Usou a habilidade Flecha Rastreadora!`
    }
}

class Duelista extends AgenteProtocolo{
    usarHabilidade(){
        return `Usou a habilidade Passagem Dimensional!`
    }
}

class Esquadrao{
    #agentes
    constructor(nome, agentes=[]) {
        this.nome = nome;
        this.#agentes=agentes;
    }

    iniciarPartida(){
        console.log(`Esquadrão: ${this.nome}`);
        this.#agentes.forEach(a => { a.entrarEmCombate()});
    }

    listarControladores(){
        return this.#agentes.filter(a => a instanceof Controlador);
    }
}

// main

const astra = new Controlador('Astra', 'Frenzy');
const viper = new Controlador('Viper', 'Ghost');
const sova = new Iniciador('Sova', 'Sheriff');
const yoru = new Duelista('Yoru', 'Classic');

const esquadraoX0 = new Esquadrao("EsquadrãoX0",[astra,viper,sova,yoru]);
esquadraoX0.iniciarPartida();
console.log('\nControladores:');
esquadraoX0.listarControladores().forEach(c => console.log(`- ${c.codinome}`));

const Jett = new AgenteProtocolo('Jett', 'Classic');
// Jett.entrarEmCombate();

