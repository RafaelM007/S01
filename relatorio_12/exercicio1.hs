data Cafe = Cafe String Double Int

descrever :: Cafe -> String
descrever (Cafe nome preco _) 
    = nome ++ " - R$ " ++ show preco

forca :: Cafe -> String

forca (Cafe _ _ intensidade)
    | intensidade >= 8 = "Forte"
    | intensidade >= 5 = "Equilibrado"
    | otherwise = "Suave"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido leite (Cafe _ preco _) =
    if leite
        then preco + 2.0
        else preco


main :: IO ()
main = do
    let expresso = Cafe "Expresso" 3.50 6
    let dark = Cafe "Dark" 4.00 9
    let capuccino = Cafe "Capuccino" 5.00 4
    let cafes=[expresso, dark, capuccino]

    putStrLn "Cafés:"
    mapM_ putStrLn (map (\c -> descrever c ++ " -  "++ forca c) cafes)


    putStr "Preco com Leite: "
    print(precoDoPedido True capuccino)

    putStr "Preco sem Leite: "
    print(precoDoPedido False capuccino)

