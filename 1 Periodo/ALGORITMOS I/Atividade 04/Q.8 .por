programa {
  funcao inicio() {
    // Aluno: Rodrigo Folha Moreira
    // Calculadora
    cadeia operacao
    real num1, num2, resultado, resultado2
    inteiro x
    escreva("Digite um número: ")
    leia(num1)
    escreva("Digite outro número: ")
    leia(num2)
    escreva("Digite uma operação (+ - / *) ")
    leia(operacao)

    se (operacao == "+") {
      resultado = num1 + num2
      escreva(num1, " + ", num2, " = ", resultado ,"\n")
    } senao se(operacao == "-") {
      resultado = num1 - num2
      escreva(num1, " - ", num2, " = ", resultado ,"\n")
    } senao se(operacao == "*") {
      resultado = num1 * num2
      escreva(num1, " * ", num2, " = ", resultado ,"\n")
    } senao se(operacao == "/") {
      resultado = num1 / num2
      escreva(num1, " / ", num2, " = ", resultado ,"\n")
    }
    enquanto (operacao != "x"){
      escreva("Digite outra operação (+ - / *) ou x para sair ")
      leia(operacao)
      resultado2 = resultado
      se (operacao == "+") {
        escreva("Digite outro número: ")
        leia(num2)
        resultado = resultado + num2
        escreva(resultado2, " + ", num2, " = ", resultado ,"\n")
      } senao se(operacao == "-") {
        escreva("Digite outro número: ")
        leia(num2)
        resultado = resultado - num2
        escreva(resultado2, " - ", num2, " = ", resultado ,"\n")
      } senao se(operacao == "*") {
        escreva("Digite outro número: ")
        leia(num2)
        resultado = resultado * num2
        escreva(resultado2, " * ", num2, " = ", resultado ,"\n")
      } senao se(operacao == "/") {
        escreva("Digite outro número: ")
        leia(num2)
        resultado = resultado / num2
        escreva(resultado2, " / ", num2, " = ", resultado ,"\n")
      }
    }
  }
}
