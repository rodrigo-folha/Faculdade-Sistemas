/*
Aluno: Rodrigo Folha Moreira
Conversor de Temperatura:
Implemente um conversor de temperatura que permita que o usuário converta entre Celsius e Fahrenheit.
Use funções separadas para realizar as conversões.
*/

import java.util.Scanner;

public class Atividade09 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        double c, f;
        int operacao = 0;

        while (operacao < 1 || operacao > 2) {
            System.out.println("Qual conversão gostaria de fazer?");
            System.out.println("[1] Celsius para Farenheit");
            System.out.println("[2] Farenheit para Celsius");

            operacao = entrada.nextInt();
            if (operacao == 1) {
                System.out.print("Digite a temperatura em graus Celsius: ");
                c = entrada.nextDouble();
                f = celsiusParaFarenheit(c);
                System.out.printf("%.2f ºC = %.2f ºF", c, f);
            } else if (operacao == 2) {
                System.out.print("Digite a temperatura em graus Fahrenheit: ");
                f = entrada.nextDouble();
                c = farenheitParaCelius(f);
                System.out.printf("%.2f ºF = %.2f ºC", f, c);
            } else {
                System.out.println("Favor digitar um valor válido!");
            }

        }

        entrada.close();
    }

    public static double celsiusParaFarenheit(double a) {
        return (1.8 * a) + 32;
    }

    public static double farenheitParaCelius(double a) {
        return (a - 32) / 1.8;
    }
}
