function analisarNumeros(n1, n2, operacao)
    if operacao == "media" then 
        return calcularMedia(n1, n2)
    elseif operacao == "maior" then 
        return encontrarMaior(n1, n2)
    elseif operacao == "diferenca" then 
        return calcularDiferencaAbsoluta(n1, n2)
    else
        print("Operação inválida!")
    end 
end

function calcularMedia(a, b)
   local media = (a+b)/2
   return media
end

function encontrarMaior(a, b)
    local maior 
    if a>b then
        maior = a
    elseif b>a then
        maior = b
    end
    return maior
end

function calcularDiferencaAbsoluta(a, b)
    local diferenca = a - b 
    if diferenca < 0 then
        return diferenca*(-1)    
    else
        return diferenca
    end
end


print("Digite o primeiro número:")
local n1 = tonumber(io.read())
print("Digite o segundo número:")
local n2 = tonumber(io.read())
print("Digite a operação (media, maior ou diferenca)")
local operacao = tostring(io.read())
local resposta = analisarNumeros(n1, n2, operacao)
print("Resultado: "..resposta)
