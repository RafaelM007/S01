data Esboco = Esboco
    { titulo :: String
    , tecnica :: String
    , horas :: Int
    }

esbocoMaisRecente :: [Esboco]->String
esbocoMaisRecente[] = "O caderno esta vazio!"
esbocoMaisRecente(e:_) = "Mais recente:  "++ titulo e ++ " - Técnica: "++ tecnica e

contarEsbocos :: [Esboco] -> Int
contarEsbocos[]=0
contarEsbocos(e:es) = 1 + contarEsbocos es

horasDesenhando :: [Esboco] -> Int
horasDesenhando [] = 0
horasDesenhando(e:es) = horas e + horasDesenhando es


main :: IO ()
main = do
    let caderno = 
            [ Esboco "Harry Potter" "grafite" 3
            , Esboco "Ruinas de Hogwarts" "carvao" 5
            , Esboco "Floresta Proibida" "carvao" 4
            ]
    
    putStrLn(esbocoMaisRecente caderno)
    putStrLn ("Total de Esboços: " ++ show(contarEsbocos caderno))
    putStrLn ("Total de hrs: " ++ show(horasDesenhando caderno))

    let cadernoVazio = []
    putStrLn(esbocoMaisRecente cadernoVazio)

    let cadernoNovo = Esboco "ruinas do Inatel" "grafite" 4 : caderno

    putStrLn " Caderno Novo: "
    putStrLn(esbocoMaisRecente cadernoNovo)
    putStrLn ("Total de Esboços: " ++ show(contarEsbocos cadernoNovo))

    putStrLn " Caderno Anterior: "
    putStrLn(esbocoMaisRecente caderno)
    putStrLn ("Total de Esboços: " ++ show(contarEsbocos caderno))

   -- putStrLn(titulo (head caderno vazio))



