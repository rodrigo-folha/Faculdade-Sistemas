programa {
  funcao inicio() {
    //Aluno: Rodrigo Folha Moreira
    //Q.3 Faça um programa que o usuário informe a dimensão
    //dos três lados do triângulo e os seus respectivos ângulos
    //e o sistema o classifique quanto aos lados e ângulos.
    real angulo1, angulo2, angulo3, lado1, lado2, lado3
    cadeia valido
    logico validacao = falso
    enquanto(validacao == falso) {
      escreva("Digite o primeiro lado do triângulo: ")
      leia(lado1)
      escreva("Digite o segundo lado do triângulo: ")
      leia(lado2)
      escreva("Digite o terceiro lado do triângulo: ")
      leia(lado3)
      se (lado1 == lado2 e lado1 == lado3 e lado2 == lado3) {
        // se o triangulo tiver todos os lados iguais ele já é equilatero e acutângulo automaticamente!.
        angulo1 = 60.0
        angulo2 = 60.0
        angulo3 = 60.0
        validacao = verdadeiro
      } senao {
        escreva("Digite o ângulo entre o lado1 e o lado2 desse triangulo: ")
        leia(angulo1)
        escreva("Digite o ângulo entre o lado2 e o lado3 desse triangulo: ")
        leia(angulo2)
        escreva("Digite o ângulo entre o lado3 e o lado1 desse triangulo: ")
        leia(angulo3)
        se ((lado1 + lado2  > lado3 e lado2 + lado3 > lado1 e lado3 + lado1 > lado2) e (angulo1 + angulo2 + angulo3 == 180) e (angulo1 != angulo2 e angulo1 != angulo3)) {
        escreva("\nO triângulo é válido!")
        validacao = verdadeiro
      } senao {
        escreva("O triângulo não é valido!\n")
        escreva("Lembre-se que a soma dos ângulos internos tem que dar 180º\n")
        escreva("E que a soma de dois lados sempre tem que ser maior que o lado restante\n")
        escreva("Lembre-se ainda. Se o triângulo não é equilátero, não tem como os angulos serem iguais!\n")
        escreva("Por favor insira dados válidos\n")
      }
      }
    }
    //Classificação quanto aos lados
      escreva("\n===== Classificando quanto aos lados =====\n")
      se (lado1 == lado2 e lado1 == lado3 e lado2 == lado3){
        escreva("Triângulo equilátero!")
      } senao se (lado1 != lado2 e lado2 != lado3 e lado1 != lado3) {
        escreva("Triângulo escaleno!")
      } senao se ((lado1 == lado2 e lado1 != lado3) ou (lado2 == lado3 e lado1 != lado1) ou (lado3 == lado1 e lado3 != lado2)) {
        escreva("Triângulo isósceles!")
      }
    //Classificação quanto aos angulos
      escreva("\n===== Classificando quanto aos ângulos =====\n")
      se (angulo1 == 90 ou angulo2 == 90 ou angulo3 == 90) {
        escreva("Triângulo retângulo")
      } senao se (angulo1 < 90 e angulo2 < 90 e angulo3 < 90) {
        escreva("Triângulo acutângulo")
      } senao se ((angulo1 > 90 e angulo2 < 90 e angulo3 <90) ou (angulo2 > 90 e angulo3 < 90 e angulo1 <90) ou (angulo3 > 90 e angulo1 < 90 e angulo2 <90)) {
        escreva("Triângulo obtusângulo")
      }
  }
}
