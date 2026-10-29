class FichaDeCriatura {
   
    constructor(nome,nivelDePerigo) {
        this.nome = nome;
        this.nivelPerigo = nivelDePerigo;
    }

    descrever(){
        return `Criatura: ${this.nome} ; Nível de Perigo: ${this.nivelPerigo}`;
    }
}

class DiarioMisterioso{

    #fichas;

    constructor(numero, fichas=[]) {
        this.numero = numero;
        this.#fichas = fichas;
    }

    anotar(criatura, nivelDePerigo){
       const novaFicha = new FichaDeCriatura(criatura, nivelDePerigo);
       this.#fichas.push(novaFicha);
    }

    exibirFichas(){
       console.log(`Número do diário:${this.numero}`);
       this.#fichas.forEach(f => console.log(f.descrever()));
    }
}

class Funcionario {
    constructor(nome, cargo) {
        this.nome = nome;
        this.cargo = cargo;
    }

}

class CabanaDoMisterio{

    #funcionarios

    constructor(dono, funcionarios=[]) {
        this.dono = dono;
        this.#funcionarios = funcionarios;
    }

    contratar(funcionario){
        this.#funcionarios.push(funcionario);
    }

    abrirAsPortas(){
        console.log(`Dono: ${this.dono}`);
        this.#funcionarios.forEach(f => console.log(`-Funcionario: ${f.nome} -- Cargo: ${f.cargo}`));
    }
}

// main

const diario = new DiarioMisterioso(96);
diario.anotar('Multiurso',40);
diario.anotar('gnomos',10);
diario.anotar('Homentauros',50)
diario.exibirFichas();
const Jose = new Funcionario('Jose','zelador');
const Marcio = new Funcionario('Marcio','vendedor');
const Cabana = new CabanaDoMisterio("Rafael");
Cabana.contratar(Jose);
Cabana.contratar(Marcio);
Cabana.abrirAsPortas();

// Composição: As fichas são escritas anotadas dentro dos diários, logo só existem nos diários. 
// Agregação: Os funcionários existem de formas independentes, eles são puxados contratados pela cabana, mas nao dependem dela para existir
