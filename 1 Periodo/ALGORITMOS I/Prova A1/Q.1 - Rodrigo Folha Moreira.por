programa {
  funcao inicio() {
    //Aluno: Rodrigo Folha Moreira
    //Quest�o 1 Escreva um programa em que o usu�rio ir� digitar
    //o seu nome completo, sexo, data de nascimento e o sistema
    //deve dizer se ele � uma crian�a se ele tiver at� 10 anos,
    //jovem se tiver at� 20, adulto se tiver at� 59 e idoso se tiver mais de 59,
    //al�m de informar tamb�m se � adulto caso seja maior de idade.
    inteiro idade, dia, mes, ano
    cadeia nome
    caracter sexo
    escreva("Seja bem vindo ao dia 31/12/2023\n")
    escreva("Digite o seu nome completo: ")
    leia(nome)
    escreva("Digite seu sexo [m] ou [f]: ")
    leia(sexo)
    escreva("Digite o dia que voc� nasceu: ")
    leia(dia)
    escreva("Digite o m�s que voc� nasceu: ")
    leia(mes)
    escreva("Digite o ano que voc� nasceu: ")
    leia(ano)
    idade = 2023-ano
    se (idade <=10) {
      escreva("Ol�, ", nome, ", voc� � uma crian�a e tem ", idade, " anos!")
    } senao se (idade <=20) {
      se (idade < 18) {
        escreva("Ol�, ", nome, ", voc� � jovem e tem ", idade, " anos!")
      } senao {
        escreva("Ol�, ", nome, ", voc� � jovem e tem ", idade, " anos, mas tamb�m � adulto por ser maior de idade")
      }
      // escreva("Ol�, ", nome, ", voc� � jovem e tem ", idade, " anos!")
    } senao se(idade <=59) {
      escreva("Ol�, ", nome, ", voc� � adulto e tem ", idade, " anos!")
    } senao se (idade > 59) {
      escreva("Ol�, ", nome, ", voc� � velho e tem ", idade, " anos!")
    }
    se (sexo == 'm') {
      escreva("\nE voc� � do sexo masculino")
    } senao se(sexo =='f') {
      escreva("\nE voc� � do sexo feminino")
    } senao {
      escreva("\nE voc� preferiu n�o identificar seu g�nero")
    }
  }
}
