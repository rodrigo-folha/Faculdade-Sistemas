programa {
  funcao inicio() {
    //Aluno: Rodrigo Folha Moreira
    //Q.3 Fa�a um programa que o usu�rio informe a dimens�o
    //dos tr�s lados do tri�ngulo e os seus respectivos �ngulos
    //e o sistema o classifique quanto aos lados e �ngulos.
    real angulo1, angulo2, angulo3, lado1, lado2, lado3
    cadeia valido
    logico validacao = falso
    enquanto(validacao == falso) {
      escreva("Digite o primeiro lado do tri�ngulo: ")
      leia(lado1)
      escreva("Digite o segundo lado do tri�ngulo: ")
      leia(lado2)
      escreva("Digite o terceiro lado do tri�ngulo: ")
      leia(lado3)
      se (lado1 == lado2 e lado1 == lado3 e lado2 == lado3) {
        // se o triangulo tiver todos os lados iguais ele j� � equilatero e acut�ngulo automaticamente!.
        angulo1 = 60.0
        angulo2 = 60.0
        angulo3 = 60.0
        validacao = verdadeiro
      } senao {
        escreva("Digite o �ngulo entre o lado1 e o lado2 desse triangulo: ")
        leia(angulo1)
        escreva("Digite o �ngulo entre o lado2 e o lado3 desse triangulo: ")
        leia(angulo2)
        escreva("Digite o �ngulo entre o lado3 e o lado1 desse triangulo: ")
        leia(angulo3)
        se ((lado1 + lado2  > lado3 e lado2 + lado3 > lado1 e lado3 + lado1 > lado2) e (angulo1 + angulo2 + angulo3 == 180) e (angulo1 != angulo2 e angulo1 != angulo3)) {
        escreva("\nO tri�ngulo � v�lido!")
        validacao = verdadeiro
      } senao {
        escreva("O tri�ngulo n�o � valido!\n")
        escreva("Lembre-se que a soma dos �ngulos internos tem que dar 180�\n")
        escreva("E que a soma de dois lados sempre tem que ser maior que o lado restante\n")
        escreva("Lembre-se ainda. Se o tri�ngulo n�o � equil�tero, n�o tem como os angulos serem iguais!\n")
        escreva("Por favor insira dados v�lidos\n")
      }
      }
    }
    //Classifica��o quanto aos lados
      escreva("\n===== Classificando quanto aos lados =====\n")
      se (lado1 == lado2 e lado1 == lado3 e lado2 == lado3){
        escreva("Tri�ngulo equil�tero!")
      } senao se (lado1 != lado2 e lado2 != lado3 e lado1 != lado3) {
        escreva("Tri�ngulo escaleno!")
      } senao se ((lado1 == lado2 e lado1 != lado3) ou (lado2 == lado3 e lado1 != lado1) ou (lado3 == lado1 e lado3 != lado2)) {
        escreva("Tri�ngulo is�sceles!")
      }
    //Classifica��o quanto aos angulos
      escreva("\n===== Classificando quanto aos �ngulos =====\n")
      se (angulo1 == 90 ou angulo2 == 90 ou angulo3 == 90) {
        escreva("Tri�ngulo ret�ngulo")
      } senao se (angulo1 < 90 e angulo2 < 90 e angulo3 < 90) {
        escreva("Tri�ngulo acut�ngulo")
      } senao se ((angulo1 > 90 e angulo2 < 90 e angulo3 <90) ou (angulo2 > 90 e angulo3 < 90 e angulo1 <90) ou (angulo3 > 90 e angulo1 < 90 e angulo2 <90)) {
        escreva("Tri�ngulo obtus�ngulo")
      }
  }
}
