programa {
  funcao inicio() {
    // Aluno: Rodrigo Folha Moreira
    // Verifica��o de Ano Bissexto
    inteiro ano
    escreva("Digite um ano: ")
    leia(ano)

    se (ano % 4 == 0 e (ano % 100 !=0 ou ano % 400 == 0)) {
      escreva("O ano ", ano, " � bissexto")
    } senao {
      escreva("O ano ", ano, " n�o � bissexto")
    }
  }
}
