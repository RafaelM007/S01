package main
import "fmt"

func main() {
	var venda1 int 
	var venda2 int 
	var venda3 int
	fmt.Println("Digite as vendas do 1º trimestre:")
	fmt.Scanln(&venda1)
	fmt.Println("Digite as vendas do 2º trimestre:")
	fmt.Scanln(&venda2)
	fmt.Println("Digite as vendas do 3º trimestre:")
	fmt.Scanln(&venda3)
	soma := venda1 + venda2 + venda3
	fmt.Printf("Total de vendas: %d unidades \n", soma)
	if soma<100 {
		fmt.Println("Meta mínima anual não atingida!")
	} else {
		switch {
			case soma >= 250 :
				fmt.Println("Classificação: Categoria Top Seller")
			case soma <= 170:
				fmt.Println("Classificação: Categoria Pleno")
			default:
				fmt.Println("Classificação: Categoria Sênior")
		}
	}
}
