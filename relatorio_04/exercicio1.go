package main
import "fmt"

func ValidarCodigoRastreio(codigo string) (bool, string){
	tamanho := len(codigo)
	if tamanho == 10{
		mensagem := "Código de rastreio registrado no sistema!"
		return true, mensagem
	} else{
		mensagem := "Erro: O código de rastreio deve ter exatamente 10 caracteres."
		return false, mensagem
	}
}
func main() {
	var codigo string
	fmt.Println("Digite o código de rastreio:")
	fmt.Scanln(&codigo)
	status, mensagem := ValidarCodigoRastreio(codigo)
	fmt.Println(mensagem)
	for status != true {
		fmt.Println("Digite o código de rastreio:")
		fmt.Scanln(&codigo)
		status, mensagem = ValidarCodigoRastreio(codigo)
		fmt.Println(mensagem)
	}
}
