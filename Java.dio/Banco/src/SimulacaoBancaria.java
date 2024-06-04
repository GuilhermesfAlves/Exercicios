import java.util.Scanner;

public class SimulacaoBancaria {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); 
        double saldo = 0.0;
        boolean loop = true;
        int opcao;

        while (loop) { 
            opcao = scanner.nextInt(); 

            switch (opcao){
            case 0 -> {
                loop = false;
                System.out.println("Programa encerrado.");
            }
            case 1 -> {
                saldo += scanner.nextDouble();
                imprimirSaldo(saldo);
            }
            case 2 -> {
                double sacar; 
                if ((sacar = scanner.nextDouble()) <= saldo){
                    saldo -= sacar;
                    imprimirSaldo(saldo);
                } else 
                    System.out.println("Saldo Insuficiente");
            }
            case 3 -> {
                imprimirSaldo(saldo);
            }
            default -> {
                System.out.println("Opção inválida. Tente novamente."); 
            }
            }
        }
        scanner.close();
    }


    public static void imprimirSaldo(double saldo){
        System.out.println("Saldo atual: " + saldo);
    }
}