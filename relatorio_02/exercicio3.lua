function filtrarMaiores(tabela, limite)
    local maiores = {}
    for i = 1, #tabela do
        if tabela[i]>limite then
            table.insert(maiores, tabela[i])
        end 
    end
    return maiores
end

print("Digite a quantidade de elementos (N):")
local N = tonumber(io.read())
local tabela={}
for i = 1, N do
        print("Digite o elemento "..i.." :")
        local elemento = tonumber(io.read())
        table.insert(tabela, elemento)
end
print("Digite o valor limite (K):")
local K = tonumber(io.read())
local resposta = filtrarMaiores(tabela, K)
print("--- Elementos maiores que "..K.." ---")
for i = 1, #resposta do
    print(resposta[i])
end
