programa {
  funcao inicio() {
    // Aluno: Rodrigo Folha Moreira
    // Calculadora IMC
    real peso, altura, imc
    escreva("Digite o seu peso: ")
    leia(peso)
    escreva("Digite a sua altura em cm: ")
    leia(altura)
    imc = (peso/((altura/100)*(altura/100)))

    se (imc < 18.6) {
      escreva("O seu imc � de: ", imc, " e voc� est� abaixo do peso")
    } senao se (imc < 25) {
      escreva("O seu imc � de: ", imc, " e voc� est� com o peso normal")
    } senao se (imc < 30) {
      escreva("O seu imc � de: ", imc, " e voc� est� com sobrepeso")
    } senao se (imc < 35) {
      escreva("O seu imc � de: ", imc, " e voc� est� com obesisade grau I")
    } senao se (imc < 40) {
      escreva("O seu imc � de: ", imc, " e voc� est� com obesisade grau II")
    } senao se (imc >= 40) {
      escreva("O seu imc � de: ", imc, " e voc� est� com obesisade grau III")
    }
  }
}
