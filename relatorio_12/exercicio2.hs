pesoMaximo :: Double
pesoMaximo = 15.0
-- pesoMaximo = 16.0     erro retornado: Multiple declarations of ‘pesoMaximo’

data Encomenda = Encomenda
    { destinatario :: String
    , peso :: Double
    , frete :: Double
    }

descrever :: Encomenda -> String
descrever e
    = "Destinatario: "++ destinatario e++ " - Peso: "++ show (peso e) ++" - Frete: " ++ show (frete e)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura itens
    = filter(\i -> peso i<= pesoMaximo)itens

totalDeFretes :: [Encomenda] -> Double
totalDeFretes itens
    = sum(map frete itens)

main :: IO ()
main = do
    let cafe = Encomenda "Santa Rita" 5.0 10.0
    let gas = Encomenda "Itajuba" 30.0 20.0
    let comida = Encomenda "Estiva" 18.0 28.0
    let guitarra = Encomenda "Pouso Alegre" 8.0 15.0
    let encomendas = [cafe, gas, comida, guitarra]

    putStrLn "Encomendas:"
    mapM_ putStrLn (map descrever encomendas)

    putStrLn "Encomendas que cabem na vassoura:"
    mapM_ putStrLn (map descrever (cabemNaVassoura encomendas))

    putStrLn "Total do fretes das encomendas que cabem:"
    print(totalDeFretes (cabemNaVassoura encomendas))

