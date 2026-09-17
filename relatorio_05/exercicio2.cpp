#include <iostream>

using namespace std;

float calcular_confiabilidade_sistema(float probabilidades[],int tamanho){
    float total=1.0;
    for(int i=0;i<tamanho;i++){
        total*=probabilidades[i];
    }
    return total;

}

int main() 
{
    int quantidade;
    float total;
    cout << "Digite a quantidade de componentes do sistema: "<<endl;
    cin>>quantidade;
    float probabilidades[quantidade];
    for(int i=0;i<quantidade;i++){
        cout<<"Digite a probabilidade do componente "<<i+1<<" (ex: 0.95):"<<endl;
        cin>>probabilidades[i];
    }
    total=calcular_confiabilidade_sistema(probabilidades, quantidade);
    cout<<"Confiabilidade total do sistema: "<<total<< " (" << 100*total<<"%)";
    return 0;
}
