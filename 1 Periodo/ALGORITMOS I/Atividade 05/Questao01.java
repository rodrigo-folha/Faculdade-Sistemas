/*
Aluno: Rodrigo Folha Moreira
Escreva um algoritmo que solicite do usuário a capacidade de um
estádio de futebol e a quantidade de pessoas presentes em um jogo.
O programa deve informar se o estádio está lotado (acima de 80% de ocupação),
parcialmente lotado (acima de 50% de ocupação) ou vazio (abaixo de 20% de ocupação).
*/

import java.util.Scanner;
public class Questao01 {
    public static void main(String[] args) {
        int capacidadeMaxima, qtdeAtual;
        double percentual;
        Scanner entrada = new Scanner(System.in);

        System.out.print("Digite a capacidade máxima do estádio de futebol: ");
        capacidadeMaxima = entrada.nextInt();
        System.out.print("Digite quantas pessoas estão agora no estádio de futebol: ");
        qtdeAtual = entrada.nextInt();

        percentual = (double) qtdeAtual/capacidadeMaxima*100;

        if (percentual >= 80) {
            System.out.println("O estádio está lotado");
        } else if (percentual >= 50) {
            System.out.println("O estádio está parcialmente lotado");
        } else if (percentual >= 20) {
            System.out.println("O estádio está com lotação normal");
        } else if (percentual < 20) {
            System.out.println("O estádio está vazio");
        } else {
            System.out.println("Digite um valor válido.");
        }
        entrada.close();
    }
}
