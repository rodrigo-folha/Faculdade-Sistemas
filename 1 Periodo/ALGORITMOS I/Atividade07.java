/*
Aluno: Rodrigo Folha Moreira
Escreva um código que calculará os juros compostos sobre um dinheiro investido.
Leia o valor que será investido (C), a taxa de rentabilidade (i) e a quantidade de meses (t)
A fórmula é M = C x (1 + i)^t
M = Montante acumulado
C = Capital investido
i = taxa de rentabilidade
t = tempo em meses
Imprima o MONTANTE final (M)
Imprima os JUROS (M - C)
*/

import java.util.Scanner;

public class Atividade07 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        double m, c, i, j;
        int t;

        System.out.print("Digite o valor que será investido em R$: ");
        c = entrada.nextDouble();

        System.out.print("Digite a taxa de rentabilidade mensal em %: ");
        i = entrada.nextDouble()/100;

        System.out.print("Digite a quantidade de meses: ");
        t = entrada.nextInt();

        m = calcularMontante(c, i, t);
        j = calcularJuros(m, c);
        mostrarResultado(c, i, t, m, j);

        entrada.close();
    }

    public static double calcularMontante(double c, double i, int t) {
        return c * (Math.pow((1 + i), t));
    }

    public static double calcularJuros(double m, double c) {
        return m - c;
    }

    public static void mostrarResultado(double c, double i, int t, double mont, double j) {
        System.out.println();
        System.out.println("Capital investido: R$ " + c);
        System.out.println("Taxa de rentabilidade mensal: " + (i*100) + "%");
        System.out.println("Período de: " + t + " meses");
        System.out.println("===============================");
        System.out.printf("O montante total é de: R$ %.2f\n", mont);
        System.out.printf("Os juros foram de: R$ %.2f ", j);
    }

}
