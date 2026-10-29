class Pokemon {
    #vida
    
    constructor(apelido, tipo, vidaInicial) {
        this.apelido = apelido;
        this.tipo = tipo;
        this.#vida = vidaInicial;
    }
    
    get vida() {
        return this.#vida;
    }
    
    sofrerDano(pontos){
        if(pontos>this.#vida){
            this.#vida=0
        }
        else{
            this.#vida=this.#vida-pontos
        }
        console.log(` ${this.apelido} tem ${this.#vida} de vida restante!`);
    }
    
    atacar(alvo){
        console.log(` ${this.apelido} fez um ataque genérico em ${alvo.apelido}!`)
        alvo.sofrerDano(10)
    }
}

class Squirtle extends Pokemon{
    constructor(apelido, vidaInicial) {
        super(apelido, 'Água', vidaInicial);
    }
    
    atacar(alvo){
        console.log(` ${this.apelido} fez um golpe hidrobomba contra ${alvo.apelido}!`)
        alvo.sofrerDano(20)
    }
    
}

class  Bulbasaur extends Pokemon{
    constructor(apelido, vidaInicial) {
        super(apelido, 'Planta', vidaInicial);
    }
    
    atacar(alvo){
        console.log(` ${this.apelido} fez um golpe Folha Mágica contra ${alvo.apelido}!`)
        alvo.sofrerDano(15)
    }
    
}

// main

const squirtle = new Squirtle('Squil', 40);
const bulbasaur = new Bulbasaur('Bulb',30);

bulbasaur.atacar(squirtle)
squirtle.atacar(bulbasaur)
squirtle.atacar(bulbasaur)

console.log(`Vida do ${squirtle.apelido}: ${squirtle.vida}`);
console.log(`Vida do ${bulbasaur.apelido}: ${bulbasaur.vida}`);

//erro por causa da vida ser privado
//console.log(squirtle.#vida);
