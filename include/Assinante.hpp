#ifndef _ASSINANTE_
#define _ASSINANTE_
#include "Usuario.hpp"
#include "Midia.hpp"
#include <vector>

using namespace std;

class Assinante: public Usuario{
    private:
        vector<Midia*> favoritos;
    public:
        Assinante();
        Assinante(string _nome);
        ~Assinante();
        void imprimeFavoritos();
        void insereFavoritos(Midia * favorito);
        void removerFavorito();
        vector<Midia*> getFavoritos();
        void imprimeNoArquivo(ofstream &outfile);
        void carregaArquivo(ifstream &infile); 
};

#endif