programa {
  funcao inicio() {
    // Aluno: Rodrigo Folha Moreira
    // Verifica��o de n�mero primos em um intervalo
    inteiro num1, num2
    real operacao
    escreva("Digite um n�mero: ")
    leia(num1)
    escreva("Digite outro n�mero: ")
    leia(num2)

    para(inteiro i=num1; i<=num2; i++) {
      logico log  = verdadeiro
      para(inteiro j=2; j<i; j++){
        se (i % j == 0) {
          log = falso
        }
      }
      se(log == verdadeiro){
          escreva(i ," ")
        
    }    }
  }
  }
