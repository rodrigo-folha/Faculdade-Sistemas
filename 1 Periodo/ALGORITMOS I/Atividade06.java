/*
Aluno: Rodrigo Folha Moreira
Faça um jogo no qual será gerado um número aleatório entre 1 e 10000.
O usuário poderá chutar até 20 vezes. Caso ele chute um número menor que o gerado aleatóriamente,
imprima “é um número MAIOR”, se ele digitar um maior imprima “é um número MENOR”.
Quando ele acertar, uma mensagem de PARABÉNS deve ser impressa
Caso ele não acerte em 20 tentativas imprima “Infelizmente você perdeu!”
*/

import java.util.Random;
import java.util.Scanner;

public class Atividade06 {
    public static void main(String[] args) {
        Random rd = new Random();
        Scanner entrada = new Scanner(System.in);

        int aleatorio = 1 + rd.nextInt(10000);
        int qtdeChutes = 0;
        int numeroChutado = 0;
        int chances = 20;

        while (qtdeChutes < 20) {
            System.out.printf("Palpite de nº%d: ", qtdeChutes+1);
            numeroChutado = entrada.nextInt();
            qtdeChutes++;
            chances--;
            if (numeroChutado == aleatorio) {
                break;
            } else {
                if (numeroChutado < aleatorio) {
                    System.out.printf("É um número MAIOR! Você ainda tem %d tentativas\n", chances);
                } else {
                    System.out.printf("É um número MENOR! Você ainda tem %d tentativas\n", chances);
                }
            }
        }

        if (numeroChutado == aleatorio) {
            System.out.printf("PARABÉNS! Você acertou! com %d tentativas. O número era: %d\n", qtdeChutes, aleatorio);
        } else {
            System.out.printf("Infelizmente você perdeu! O número era: %d", aleatorio);
        }

        entrada.close();
    }
}
