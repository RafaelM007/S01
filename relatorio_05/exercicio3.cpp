#include <iostream>
using namespace std;

int main(){
    float capacidade;
    float pesoAtual = 0.0;
    float pesoPacote;
    float removido;
    int opcao;

    cout << "Informe a capacidade maxima de carga do drone (kg): " << endl;
    cin >> capacidade;
    while (opcao != 4){
        cout << "=== SISTEMA DE CARGA DO DRONE ===" << endl;
        cout << "1. Verificar carga" << endl;
        cout << "2. Carregar pacote" << endl;
        cout << "3. Descarregar pacote" << endl;
        cout << "4. Encerrar operacao" << endl;
        cout << "Escolha uma opcao: " << endl;

        cin >> opcao;

        if (opcao== 1){
            cout << "Carga atual: " << pesoAtual << " kg/" << capacidade << " kg" << endl;
            cout << "Espaco disponivel: "<< capacidade - pesoAtual << " kg" << endl;
        }
        else if (opcao == 2){
            cout << "Digite o peso do pacote a ser carregado (kg): ";
            cin >> pesoPacote;
            if (pesoAtual + pesoPacote <= capacidade){
                pesoAtual += pesoPacote;
                cout << "Pacote adicionado com sucesso!" << endl;
            }
            else{
                cout << "Alerta: Peso maximo de decolagem excedido! Operacao cancelada." << endl;
            }
        }
        else if (opcao == 3){
            cout << "Digite o peso a ser removido: ";
            cin >> removido;
            if (pesoAtual - removido >= 0)
            {
                pesoAtual -= removido;
                cout << "Pacote descarregado com sucesso." << endl;
            }
            else
            {
                cout << "Alerta: Peso removido ultrapassa o peso atual. Operacao inválida." << endl;
            }
        }

    }

    cout << "Encerrando sistema de telemetria...";

    return 0;
}
