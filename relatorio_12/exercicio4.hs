data Etapa = NaFila | NoBanho | Concluido
    deriving (Show, Eq)

data Atendimento = Atendimento
    { cliente :: String
    , servico :: String
    , valor :: Double
    , etapa :: Etapa
    }

descrever :: Atendimento -> String
descrever atendimento
    = "cliente: "++ cliente atendimento ++ " - serviço: " ++ servico atendimento ++ " Etapa: "++ show (etapa atendimento)

concluir :: Atendimento -> Atendimento
concluir atendimento = atendimento{etapa = Concluido}

arrecadado :: [Atendimento] -> Double 
arrecadado atendimentos
    = sum(map valor(filter(\a -> etapa a == Concluido )atendimentos))


main :: IO ()
main = do
    let banhoQuente = Atendimento "Jose" "Banho quente" 25.0 NaFila
    let banhoFrio = Atendimento "Maria" "Banho frio" 14.0 NaFila
    let banhoMorno = Atendimento "Bento" "Banho morno" 18.0 NoBanho

    let atendimentos = [banhoQuente, banhoMorno, banhoFrio]

    let atendimentosNovo = [ banhoQuente, concluir banhoMorno, concluir banhoFrio]

    putStrLn "Primeira lista:"
    mapM_ putStrLn (map descrever atendimentos)
    putStrLn (" valor arrecadado :" ++ show (arrecadado atendimentos))

    putStrLn "Segunda lista:"
    mapM_ putStrLn (map descrever atendimentosNovo)
    putStrLn (" valor arrecadado :" ++ show( arrecadado atendimentosNovo))
    
   
    
