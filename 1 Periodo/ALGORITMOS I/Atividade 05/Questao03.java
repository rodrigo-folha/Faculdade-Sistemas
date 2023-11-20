/*
Aluno: Rodrigo Folha Moreira
Sabendo que em um campeonato de futebol cada time ganha 3 pontos por vitória
e um ponto por empate, escreva um programa que solicite do usuário a
quantidade de vitórias e empates de dois times e informe qual deles
estará mais bem classificado no campeonato.
 */

import java.util.Scanner;

public class Questao03 {
    public static void main(String[] args) {
        String time1, time2;
        int vitoriasTime1, vitoriasTime2, empatesTime1, empatesTime2, pontosTime1, pontosTime2;
        Scanner entrada = new Scanner(System.in);

        System.out.print("Digite o nome do time 1: ");
        time1 = entrada.nextLine();
        System.out.print("Digite o nome do time 2: ");
        time2 = entrada.nextLine();

        System.out.print("Digite quantas vitórias teve o time " + time1 + ": ");
        vitoriasTime1 = entrada.nextInt();
        System.out.print("Digite quantos empates teve o time " + time1 + ": ");
        empatesTime1 = entrada.nextInt();
        pontosTime1 = (vitoriasTime1 * 3) + (empatesTime1);

        System.out.print("Digite quantas vitórias teve o time " + time2 + ": ");
        vitoriasTime2 = entrada.nextInt();
        System.out.print("Digite quantos empates teve o time " + time2 + ": ");
        empatesTime2 = entrada.nextInt();
        pontosTime2 = (vitoriasTime2 * 3) + (empatesTime2);

        if (pontosTime1 > pontosTime2) {
            System.out.println("O Time " + time1 + " está melhor classificado");
            System.out.println(time1 + ": " + pontosTime1 + " pontos!");
            System.out.println(time2 + ": " + pontosTime2 + " pontos!");
        } else if (pontosTime1 < pontosTime2) {
            System.out.println("O Time " + time2 + " está melhor classificado");
            System.out.println(time2 + ": " + pontosTime2 + " pontos!");
            System.out.println(time1 + ": " + pontosTime1 + " pontos!");
        } else {
            System.out.printf("Ambos estão empatados com %d pontos", pontosTime1);
        }

        entrada.close();
    }
}
