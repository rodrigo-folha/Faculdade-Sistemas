/*
Aluno: Rodrigo Folha Moreira
Faça a calculadora utilizando o switch case e funções/métodos.
A calculadora deve utilizar o resultado a última operação como
elemento para próxima operação. Mesmo comportamento da calculadora do seu computador.
*/

import java.util.Scanner;

public class Atividade08 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        double n1, n2;
        String operacao;
        System.out.print("Digite um número: ");
        n1 = entrada.nextDouble();
        do {
            System.out.println("Digite uma operação (+), (-), (*), (/) ou 's' para sair");
            operacao = entrada.next();
            if (operacao.equals("s")) {
                break;
            }
            switch (operacao) {
                case "+":
                    System.out.print("Digite outro número: ");
                    n2 = entrada.nextDouble();
                    System.out.println(n1 + " + " + n2 + " = " + somar(n1, n2));
                    n1 = somar(n1,n2);
                    break;

                case "-":
                    System.out.print("Digite outro número: ");
                    n2 = entrada.nextDouble();
                    System.out.println(n1 + " - " + n2 + " = " + subtrair(n1, n2));
                    n1 = subtrair(n1, n2);
                    break;

                case "*":
                    System.out.print("Digite outro número: ");
                    n2 = entrada.nextDouble();
                    System.out.println(n1 + " * " + n2 + " = " + multiplicar(n1, n2));
                    n1 = multiplicar(n1, n2);
                    break;

                case "/":
                    System.out.print("Digite outro número: ");
                    n2 = entrada.nextDouble();
                    System.out.println(n1 + " / " + n2 + " = " + dividir(n1, n2));
                    n1 = dividir(n1, n2);
                    break;

                default:
                    System.out.println("Opa! essa operação ai não é válida");
                    break;
            }
        } while (!operacao.equals("s"));

        System.out.println("O Resultado final da sua operação = " + n1);

        entrada.close();
    }

    public static double somar(double x, double y) {
        return x + y;
    }
    public static double subtrair(double x, double y) {
        return x - y;
    }
    public static double dividir(double x, double y) {
        return x / y;
    }
    public static double multiplicar(double x, double y) {
        return x * y;
    }

}



