/*
Aluno: Rodrigo Folha Moreira
Conversor de Unidades:
Implemente um conversor de unidades que permita ao usuário converter entre
diferentes unidades de medida, como metros para pés, litros para galões, etc.
Use funções separadas para cada conversão.
*/

import java.util.Scanner;

public class Atividade10 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        double valor;
        int operacao = 0;

        while (operacao < 1 || operacao > 6) {
            System.out.println("Seja bem vindo a tabela de conversões!");
            System.out.println("Qual a grandeza deseja converter?");
            System.out.println("[1] - Massa");
            System.out.println("[2] - Comprimento");
            System.out.println("[3] - Área");
            System.out.println("[4] - Volume");
            System.out.println("[5] - Velocidade");
            System.out.println("[6] - Pressão");

            operacao = entrada.nextInt();

            switch (operacao) {
                case 1:
                    System.out.print("Digite em kg o valor a ser convertido: ");
                    valor = entrada.nextDouble();
                    converterMassa(valor);
                    break;
                case 2:
                    System.out.print("Digite em metros o valor a ser convertido: ");
                    valor = entrada.nextDouble();
                    converterComprimento(valor);
                    break;
                case 3:
                    System.out.print("Digite em metros quadrados o valor a ser convertido: ");
                    valor = entrada.nextDouble();
                    converterArea(valor);
                    break;
                case 4:
                    System.out.print("Digite em litros o valor a ser convertido: ");
                    valor = entrada.nextDouble();
                    converterVolume(valor);
                    break;
                case 5:
                    System.out.print("Digite em km/h o valor a ser convertido: ");
                    valor = entrada.nextDouble();
                    converterVelocidade(valor);
                    break;
                case 6:
                    System.out.print("Digite em atm (atmosfera) o valor a ser convertido: ");
                    valor = entrada.nextDouble();
                    converterPressao(valor);
                    break;
                default:
                    System.out.println("Digite um valor válido");
                    break;
            }
        }

        entrada.close();
    }

    public static void converterMassa(double kg) {
        System.out.printf("%.2f kg em toneladas = %.4f t", kg, (kg/1000));
        System.out.printf("\n%.2f kg em gramas = %.2f g", kg, (kg*1000));
        System.out.printf("\n%.2f kg em libras = %.2f lb", kg, (kg*2.20462));
        System.out.printf("\n%.2f kg em onças = %.2f oz", kg, (kg*35.274));
        System.out.printf("\n%.2f kg em miligramas = %.2f mg", kg, (kg*1000000));

    }

    public static void converterComprimento(double m) {
        System.out.printf("%.2f m em km = %.2f km", m, (m/1000));
        System.out.printf("\n%.2f m em milha = %.2f miles", m, (m/1609));
        System.out.printf("\n%.2f m em cm = %.2f cm", m, (m*100));
        System.out.printf("\n%.2f m em mm = %.2f mm", m, (m*1000));
        System.out.printf("\n%.2f m em pés = %.2f ft", m, (m*3.28084));

    }

    public static void converterArea(double m2) {
        System.out.printf("%.2f m² em quilometro quadrado = %.4f km²", m2, (m2 / 1000000));
        System.out.printf("\n%.2f m² em milhas quadradas = %.4f miles²", m2, (m2 / 2590000));
        System.out.printf("\n%.2f m² em pés quadrados = %.2f ft²", m2, (m2 * 10.764));
        System.out.printf("\n%.2f m² em polegadas quadradas = %.2f pol²", m2, (m2 * 1550));
        System.out.printf("\n%.2f m² em hectares = %.2f ha", m2, (m2 / 10000));
    }

    public static void converterVolume(double l) {
        System.out.printf("%.2f l em galões = %.1f galões", l, (l / 3.785));
        System.out.printf("\n%.2f l em metros cúbicos = %.4f m³", l, (l / 1000));
        System.out.printf("\n%.2f l em mililitros = %.0f ml", l, (l * 1000));
        System.out.printf("\n%.2f l em pés cúbicos = %.2f ft³", l, (l / 28.317));
        System.out.printf("\n%.2f l em polegadas cúbicas = %.2f pol³", l, (l * 61.024));
    }

    public static void converterVelocidade(double v) {
        System.out.printf("%.2f km/h em milhas por hora = %.2f miles/h", v, (v / 1.609));
        System.out.printf("\n%.2f km/h em metros por segundo = %.2f m/s", v, (v / 3.6));
        System.out.printf("\n%.2f km/h em pes por segundos = %.2f ft/s", v, (v / 1.097));
    }

    public static void converterPressao(double p) {
        System.out.printf("%.2f atm em bar = %.2f bar", p, (p * 1.013));
        System.out.printf("\n%.2f atm em pascal = %.2f Pa", p, (p * 101325));
        System.out.printf("\n%.2f atm em kPa = %.2f kPa", p, (p * 101.325));
        System.out.printf("\n%.2f atm em psi = %.2f psi", p, (p * 14.696));
        System.out.printf("\n%.2f atm em Torr = %.2f torr", p, (p * 760));
        System.out.printf("\n%.2f atm em kN/m² = %.2f kN/m²", p, (p * 101.325));
        System.out.printf("\n%.2f atm em kgf/cm² = %.2f kgf/cm²", p, (p * 1.033));
    }

}
