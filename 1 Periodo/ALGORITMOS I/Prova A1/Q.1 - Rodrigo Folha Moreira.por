programa {
  funcao inicio() {
    //Aluno: Rodrigo Folha Moreira
    //Questão 1 Escreva um programa em que o usuário irá digitar
    //o seu nome completo, sexo, data de nascimento e o sistema
    //deve dizer se ele é uma criança se ele tiver até 10 anos,
    //jovem se tiver até 20, adulto se tiver até 59 e idoso se tiver mais de 59,
    //além de informar também se é adulto caso seja maior de idade.
    inteiro idade, dia, mes, ano
    cadeia nome
    caracter sexo
    escreva("Seja bem vindo ao dia 31/12/2023\n")
    escreva("Digite o seu nome completo: ")
    leia(nome)
    escreva("Digite seu sexo [m] ou [f]: ")
    leia(sexo)
    escreva("Digite o dia que você nasceu: ")
    leia(dia)
    escreva("Digite o mês que você nasceu: ")
    leia(mes)
    escreva("Digite o ano que você nasceu: ")
    leia(ano)
    idade = 2023-ano
    se (idade <=10) {
      escreva("Olá, ", nome, ", você é uma criança e tem ", idade, " anos!")
    } senao se (idade <=20) {
      se (idade < 18) {
        escreva("Olá, ", nome, ", você é jovem e tem ", idade, " anos!")
      } senao {
        escreva("Olá, ", nome, ", você é jovem e tem ", idade, " anos, mas também é adulto por ser maior de idade")
      }
      // escreva("Olá, ", nome, ", você é jovem e tem ", idade, " anos!")
    } senao se(idade <=59) {
      escreva("Olá, ", nome, ", você é adulto e tem ", idade, " anos!")
    } senao se (idade > 59) {
      escreva("Olá, ", nome, ", você é velho e tem ", idade, " anos!")
    }
    se (sexo == 'm') {
      escreva("\nE você é do sexo masculino")
    } senao se(sexo =='f') {
      escreva("\nE você é do sexo feminino")
    } senao {
      escreva("\nE você preferiu não identificar seu gênero")
    }
  }
}
