#include <stdio.h>

int carregaVetor(int *_enderecoVetor);

int encontraPadrao(int *_vetDados, int _posDados, int *_vetPadrao, int _posPadrao, int _tamPadrao);

int main() {
    int vetorDados[50];
    int vetorPadrao[5];
    int tamVetorDados = carregaVetor(vetorDados);
    int tamVetorPadrao = carregaVetor(vetorPadrao);

    int contabilizaPadrao = 0;
    int posicaoDados = 0;

    while ((posicaoDados + tamVetorPadrao) <= tamVetorDados) {
        contabilizaPadrao =
                contabilizaPadrao + encontraPadrao(vetorDados, posicaoDados, vetorPadrao, 0, tamVetorPadrao);
        posicaoDados = posicaoDados + 1;
    }

    printf("Quantidade de padroes contabilizados: %d", contabilizaPadrao);
}

int carregaVetor(int *_enderecoVetor) {
    printf("Informe o numero de dados a serem inseridos no vetor: ");
    int tamanhoVetor = 0;
    scanf("%d", &tamanhoVetor);
    int posicao = 0;
    while (posicao < tamanhoVetor) {
        printf("Informe um dado a ser inserido no vetorDados: ");
        scanf("%d", &_enderecoVetor[posicao]);
        posicao = posicao + 1;
    }
    return tamanhoVetor;
}

int encontraPadrao(int *_vetDados, int _posDados, int *_vetPadrao, int _posPadrao, int _tamPadrao) {
    if (_vetDados[_posDados] != _vetPadrao[_posPadrao]) {
        return 0;
    } else {
        return encontraPadrao(_vetDados, _posDados + 1, _vetPadrao, _posPadrao + 1, _tamPadrao);
    }
}
