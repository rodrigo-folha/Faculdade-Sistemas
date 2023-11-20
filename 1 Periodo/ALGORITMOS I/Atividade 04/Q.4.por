programa {
  funcao inicio() {
    // Aluno: Rodrigo Folha Moreira
    // Soma dos números pares
    inteiro num, soma
    escreva("Digite um número: ")
    leia(num)

    para(inteiro i=1; i<=num; i++) {
      se (i % 2 == 0) {
        soma = (i+num)
        escreva(num, " + ", i, " = ", soma, "\n")
      }
    }
  }
}
