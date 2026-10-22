#modulos
module Depoente
    def depor
        raise NotImplementedError
    end
end

module Detivel
  def ser_detido
    puts "#{@nome} foi levada pela Scotland Yard"
  end
end

#Classe Base

class Envolvido
    
    attr_reader :nome
    
    def initialize(nome)
        @nome = nome
    end
end

class TestemunhaOcular < Envolvido
    include Depoente
    def depor
        puts"#{nome} viu um sujeito com capa preta assasinando a vítima"
    end
end

class SuspeitoDoCrime < Envolvido
    include Depoente
    include Detivel
    def depor
        puts"#{nome} declarou que estava em aula no inatel"
    end
end

class Investigacao
    
    def initialize(caso)
        @caso = caso
        @envolvidos=[]
    end
    
    def registrar(envolvido)
        @envolvidos << envolvido
    end
    
    def ouvir_todos
        puts "Caso: #{@caso}"
        @envolvidos.each do |env|
            env.depor
        end
    end
    
    def acionar_scotland_yard
        detiveis = @envolvidos.select { |env| env.respond_to?(:ser_detido) }
        detiveis.each(&:ser_detido)
    end
end

#main
Rafael=TestemunhaOcular.new("Rafael")
Carlos=SuspeitoDoCrime.new("Carlos")
Ana=SuspeitoDoCrime.new("Ana")

investigacao1 = Investigacao.new("A morte do joalheiro")
investigacao1.registrar(Rafael)
investigacao1.registrar(Carlos)
investigacao1.registrar(Ana)

investigacao1.ouvir_todos
investigacao1.acionar_scotland_yard






