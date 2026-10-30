class  UsuarioDeNen{
   
    constructor(nome) {
        this.nome = nome;
    }

    atacar(alvo){
       console.log(`${this.nome} lançou um ataque genérico de aura contra ${alvo.nome}!`);
    }
}

class Intensificador extends UsuarioDeNen{
    atacar(alvo) {
        console.log(`${this.nome} usou um ataque de eletricidade contra ${alvo.nome}!`);
    }
}

class Transmutado extends UsuarioDeNen{
    atacar(alvo) {
        console.log(`${this.nome} usou um atque de fogo contra ${alvo.nome}!`);
    }
}

class Materializador extends UsuarioDeNen{
    atacar(alvo) {
        console.log(`${this.nome} usou um ataque de gelo contra ${alvo.nome}!`);
    }
}

class Aranha{
    constructor(nome,numero) {
        this.nome = nome;
        this.numero = numero;
    }
}

class TrupeFantasma{
    #aranhas;
    constructor(cidade, aranhas=[]) {
        this.cidade = cidade;
        this.#aranhas = aranhas;
    }

    revelarAranhas(){
        console.log(`Aranhas na cidade: ${this.cidade}`);
        this.#aranhas.forEach(a => {console.log(`Número: ${a.numero} ; Nome: ${a.nome}`)});
    }

    buscarAranha(numero){
        return this.#aranhas.find(a => a.numero=== numero);
    }

}

// main

const franklin = new Aranha('Franklin', 7);
const nobunaga = new Aranha('Nobunaga', 1);
const trupe = new TrupeFantasma('Santa Rita', [franklin, nobunaga]);
trupe.revelarAranhas();
const buscaAranha = trupe.buscarAranha(7);

const rafael = new Intensificador('Rafael');
const lucas = new Transmutado('Lucas');
const mateus = new Materializador('Mateus');
const usuarios = [rafael, lucas, mateus];
usuarios.forEach(u => {u.atacar(buscaAranha)});
