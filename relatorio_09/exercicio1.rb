class CoquetelAfterlife

  attr_reader :nome

  def initialize(nome, preco)
    @nome = nome
    @_preco = preco
  end

  def preco
    @_preco
  end

  def preco=(valor)
    if valor.is_a?(Numeric) && valor >= 5 && valor <= 200
        @_preco = valor
    else
        puts "Preço Inválido!"
    end
  end

  def ficha
        "Drink: #{nome} -- Preço: #{preco}"
  end
end

# Classe filha
class DrinkDeLenda < CoquetelAfterlife
 
  attr_reader :lenda

  def initialize(nome, preco, lenda)
    super(nome, preco)
    @lenda = lenda
  end

  def ficha
        "Drink: #{nome} , Em homenagem a lenda: #{lenda} -- Preço: #{preco}"
  end

end

#main
#usei nomes diferentes pois não conheço o jogo
drinks = [
    CoquetelAfterlife.new("Caipirinha", 26),
    DrinkDeLenda.new("Coca-cola", 7 , "Manuel"),
    DrinkDeLenda.new("Fanta", 5 , "Maria")
]

drinks.each do |c|
    puts c.ficha
end

drinks[2].preco = 500
puts drinks[2].ficha

drinks[2].preco = 80
puts drinks[2].ficha

#drinks[1].nome = "Coca-Cola Zero"



