programa {
  funcao inicio() {
    // Aluno: Rodrigo Folha Moreira
    // Idade para entrar no cinema
    inteiro idade
    escreva("Digite a sua idade: ")
    leia(idade)
    se (idade < 0) {
      escreva("Erro, voc� ainda nem nasceu!")
    } senao se ((idade < 10) e (idade >= 0)){
      escreva("Voc� pode entrar apenas em filmes livres")
    } senao se (idade <16) {
      escreva("Voc� pode assistir filmes livres e filmes para 10 anos")
    } senao se (idade <18) {
      escreva("Voc� pode assistir filmes livres, filmes para 10 e 16 anos")
    } senao se (idade >=18) {
      escreva("Voc� pode assistir filmes livres, filmes para 10, 16 e 18 anos")
    }
  }
}
