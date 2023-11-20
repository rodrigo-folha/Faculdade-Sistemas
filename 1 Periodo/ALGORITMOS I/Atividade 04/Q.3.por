programa {
  funcao inicio() {
    // Aluno: Rodrigo Folha Moreira
    // Verificação de número primos em um intervalo
    inteiro num1, num2
    real operacao
    escreva("Digite um número: ")
    leia(num1)
    escreva("Digite outro número: ")
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
