#include <iostream>
#include <string>

using namespace std;

class LinkSocial {

private:
    string nome;
    string arcana;
    int rank;
public:
    void setNome(string n) {
        nome = n;
    }
    void setArcana(string a) {
        arcana = a;
    }
    void setRank(int r) {
        rank = r;
    }
    string getNome() {
        return nome;
    }
    string getArcana() {
        return arcana;
    }

    int getRank() {
        return rank;
    }
    void subirRank() {
        rank++;
    }
};

int main() {
    LinkSocial link;
    link.setNome("Rafael");
    link.setArcana("Guerreiro");
    link.setRank(1);
    cout << "Status inicial:" << endl;
    cout << "Nome: " << link.getNome() << endl;
    cout << "Arcana: " << link.getArcana() << endl;
    cout << "Rank: " << link.getRank() << endl;
    cout << endl;

    link.subirRank();

    cout << "Status apos subir de rank:" << endl;
    cout << "Nome: " << link.getNome() << endl;
    cout << "Arcana: " << link.getArcana() << endl;
    cout << "Rank: " << link.getRank() << endl;

    return 0;
}
