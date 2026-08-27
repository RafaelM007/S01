function contarOcorrencias(tabela, alvo)
    local contador = tonumber(0)
    for i = 1, #tabela do
        if tabela[i]==alvo then
            contador=contador+1
        end 
    end
    return contador
end

print("Digite a quantidade de elementos (N):")
local N = tonumber(io.read())
local tabela={}
for i = 1, N do
        print("Digite o elemento "..i.." :")
        local elemento = tonumber(io.read())
        table.insert(tabela, elemento)
end
print("Digite o número X a ser buscado:")
local X = tonumber(io.read())
local quantidade = contarOcorrencias(tabela, X)
print("O numero "..X.." aparece "..quantidade.."vez(es) na tabela.")
