Dim peso As single
Dim agua As single
Dim meta As single
input "Qual seu peso?",peso
input "Qual a quntidade de agua ingerida?", agua
meta = peso * 35
if agua >= meta Then
    print "Meta atingida!"
else
    print "Meta nao atingida"
end if 
sleep 
