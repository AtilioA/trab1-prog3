#ifndef _PODCAST_
#define _PODCAST_
#include "Midia.hpp"

using namespace std;

class Podcast: public Midia{
    private:
        int qtdTemporadas;
    public:
        Podcast();
        Podcast(string nome, Midia::Genero gen, int qtdTemp);
        void imprimeInfoProduto();
        void imprimeNoArquivo();

        int getQtdTemporadas();
        void setQtdTemporadas(int qtdTemporadas);
};

#endif