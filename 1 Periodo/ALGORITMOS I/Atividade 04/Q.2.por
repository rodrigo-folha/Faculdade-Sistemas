programa {
  funcao inicio() {
    // Aluno: Rodrigo Folha Moreira
    // Tabuada
    inteiro num, mult
    escreva("Digite um número: ")
    leia(num)

    para(inteiro c=1; c <=10; c++) {
      mult = num * c
      escreva(num, " x ", c, " = ", mult, "\n")
    }
  }
}
