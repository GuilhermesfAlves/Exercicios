import java.util.Scanner;

public class ControleSimplesDeSaques {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); 

        double limiteDiario = scanner.nextDouble();

        while(limiteDiario > 0){
            double valorARetirar = scanner.nextDouble();
            
            if (valorARetirar == 0)
              break;

            if (valorARetirar <= limiteDiario){
                limiteDiario -= valorARetirar;
                System.out.println("Saque realizado. Limite restante: " + limiteDiario);
            } else {
                System.out.print("Limite diario de saque atingido. ");
                break;
            }
        }
        System.out.println("Transacoes encerradas.");
        scanner.close(); 
    }
}