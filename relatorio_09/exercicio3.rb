
class PhoneWave
    
    def enviar_dmail(mensagem)
        puts "mensagem: #{mensagem} --- Enviada para o passado!"
    end
end


class MembroDoLab
    
    attr_reader :numLab, :nome
    
    def initialize(numLab, nome)
        @numLab = numLab
        @nome = nome
    end
end

class LaboratorioDeGadgets
    def initialize()
        @phonewave = PhoneWave.new
        @membros = []
    end
    
    def admitir(membro)
        @membros << membro
        puts "Número: #{membro.numLab} ; Nome: #{membro.nome}"
    end
    
    def experimento(mensagem)
        @membros.each do |m|
            puts "Número: #{m.numLab} ; Nome: #{m.nome}"
        end
        @phonewave.enviar_dmail(mensagem)
    end
end

#main
Rafael = MembroDoLab.new(102 , "Rafael")
Bruno = MembroDoLab.new(308 , "Bruno")

laboratorioA = LaboratorioDeGadgets.new
laboratorioA.admitir(Rafael)
laboratorioA.admitir(Bruno)

laboratorioA.experimento("Olá passado! Estou comunicando do futuro!")

#Composição: O PhoneWave faz parte do LaboratorioDeGadgets, ou seja, se ele deixar de existir o Lab tbm deixa de existir.É criado do initialize do lab.
#Agregação: Os membros fazem parte do lab, o lab pode continuar existinto memso sem a existência deles. É criado fora do lab








