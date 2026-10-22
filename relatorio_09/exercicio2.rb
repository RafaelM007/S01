#Classe Base
class Instrumentista
    
    attr_reader :nome, :instrumento

    def initialize(nome, instrumento)
        @nome = nome
        @instrumento = instrumento
    end

    def interpretar(peca)
        raise NotImplementedError, "É necessario implementar o metodo interpretar!!"
    end
end

# Classes filha
class Solista < Instrumentista
    
    def interpretar(peca)
        "#{nome} conduz a melodia princial com o instrumento: #{instrumento}, na peça: #{peca} "
    end
end

class Acompanhador < Instrumentista
    
    def interpretar(peca)
        "#{nome} acompanha o ritmo do solista com o instrumento: #{instrumento}, na peça: #{peca} "
    end
end

class Regente
    

    def initialize(nome)
        @nome = nome
        @orquestra = []
    end
    
    def convocar(instrumentista)
        @orquestra << instrumentista
    end
    
    def reger(peca)
        puts "Regente:#{@nome} -- Peça: #{peca}"
        @orquestra.each do |c|
            puts c.interpretar(peca)
        end
    end
    
    def escalacao
        @orquestra.map do |inst|
            "#{inst.class}:  #{inst.nome}"
        end
    end
end

#main

Joao = Solista.new("joao", "Bateria")
Paulo = Acompanhador.new("Paulo", "Guitarra")
Gabriel = Regente.new("Gabriel")

Gabriel.convocar(Joao)
Gabriel.convocar(Paulo)

Gabriel.reger("Harry Potter Musical")

Gabriel.escalacao.each do |escalado|
    puts escalado
end

Rafael = Instrumentista.new("Rafael", "Piano")
#Rafael.interpretar("Harry Potter Musical")






