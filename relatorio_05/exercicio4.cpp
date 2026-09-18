#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    int matriz_solar[5][5] = {
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0}
    };
    int escolha = 0;
    int fileira, coluna;
    int ativas = 0, inativas = 0;
    while (escolha != 3){
        cout << "=== TELEMETRIA DO PAINEL SOLAR ===" << endl;
        cout << "1. Ativar Celula" << endl;
        cout << "2. Ver Mapa da Matriz" << endl;
        cout << "3. Sair" << endl;
        cout << "Escolha uma opcao:" << endl;
        cin >> escolha;
        if(escolha == 1){
            cout << "Digite a fileira (0-4): " << endl;
            cin >> fileira;

            cout << "Digite a coluna (0-4): " << endl;
            cin >> coluna;

            if(matriz_solar[fileira][coluna] == 0){
                matriz_solar[fileira][coluna] = 1;
                cout << "Sucesso: Celula solar ativada!" << endl;
            }
            else{
                cout << "Erro: Celula solar ja esta em operacao!" << endl;
            }
        }
        else if(escolha == 2){
            cout << "--- Mapa da Matriz Solar ---" << endl;
            for(int i=0; i<5; i++){
                for(int j=0; j<5; j++){
                    cout << "["<<matriz_solar[i][j] << "]";

                    if(j < 4){
                        cout << " ";
                    }
                }
                cout << endl;
            }
        }
    }

    for(int i = 0; i < 5; i++){
        for(int j = 0; j < 5; j++){
            if(matriz_solar[i][j]==1){
                ativas++;
            }
            else{
                inativas++;
            }
        }
    }
    float percentagem = (ativas*100) / 25;
    cout<<"=== RELATORIO FINAL DE OPERACAO ==="<<endl;
    cout<<"Total de celulas ATIVAS: "<<ativas<<endl;
    cout<<"Total de celulas INATIVAS: "<<inativas<<endl;
    cout<<fixed<<setprecision(2);
    cout<<"Capacidade Operacional: "<<percentagem<<"%"<<endl;
    return 0;
}
