/*
Aluno: Rodrigo Folha Moreira
Escreva um programa que solicite do usuário os valores
para os lados de um triângulo e informe se eles são válidos.
 */

import java.util.Scanner;

public class Questao02 {
    public static void main(String[] args) {
        double l1, l2, l3;
        Scanner entrada = new Scanner(System.in);
        System.out.print("Digite o lado 1: ");
        l1 = entrada.nextDouble();
        System.out.print("Digite o lado 2: ");
        l2 = entrada.nextDouble();
        System.out.print("Digite o lado 3: ");
        l3 = entrada.nextDouble();

        if ((l1 + l2 > l3) && (l2 + l3 > l1) && (l3 + l1 > l2)) {
            System.out.println("O triângulo é válido!");
        } else {
            System.out.println("O triângulo não é válido!");
        }
        entrada.close();
    }
}
