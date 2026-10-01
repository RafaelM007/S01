#include <iostream>
#include <string>

using namespace std;

class Banda {

private:
    string nome;
    int integrantes;
    float potenciaSom;
    int energia;
public:
    Banda(string n, int i, float p, int e) 
        : nome(n), integrantes(i), potenciaSom(p), energia(e) {}

    void duelar(Banda &rival) {
        cout << nome <<" e "<< rival.nome << " se apresentaram!" << endl;
        rival.energia -= potenciaSom;
    }
    void exibirStatus() {
        cout << nome << " - Integrantes: " << integrantes 
             << " - Potencia: " << potenciaSom 
             << " - Energia: " << energia << endl;
    }
};

int main() {
    Banda banda1("The Beatles", 4, 28.5, 100);
    Banda banda2("Queen", 4, 29.0, 100);

    cout << "Status antes do duelo:" << endl;
    banda1.exibirStatus();
    banda2.exibirStatus();
    cout << endl;

    banda1.duelar(banda2);
    cout << endl;

    cout << "Status apos o duelo:" << endl;
    banda1.exibirStatus();
    banda2.exibirStatus();

    return 0;
}
