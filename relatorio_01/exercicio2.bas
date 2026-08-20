Dim PIN As integer
Dim tentativa As integer
PIN = 4321

input "Informe o PIN:", tentativa

while tentativa <> PIN
    print "PIN invalido. Tente novamente."
    input "Informe o PIN:", tentativa
wend
print "Transacao autorizada!"
sleep
