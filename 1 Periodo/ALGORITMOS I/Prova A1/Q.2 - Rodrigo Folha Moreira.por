programa {
  funcao inicio() {
    //Aluno: Rodrigo Folha Moreira
    //Q.2 Escreva um programa que solicite do usu�rio
    //uma sequ�ncia de n�meros de no m�nimo 6 n�meros
    //e no m�ximo 10 e apresente ao final o maior n�mero digitado.
    inteiro n1, n2, maior=0
    escreva("Digite um intervalo entre 6 e 10: ")
    leia(n1)
    enquanto (n1<6 ou n1>10) {
      escreva("Digite um intervalo entre 6 e 10: ")
      leia(n1)
    }
    para(inteiro i=0;i<n1;i++) {
      escreva("Digite um n�mero: ")
      leia(n2)
      se (n2>=maior) {
        maior = n2
      }
    }
    escreva("O maior n�mero digitado foi: ", maior)
  }
}
