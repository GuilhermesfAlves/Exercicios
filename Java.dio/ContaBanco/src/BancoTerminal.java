import java.util.Scanner;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class BancoTerminal {
    public static void main(String [] args) {
        Scanner scanner = new Scanner(System.in);
        String nomeCliente = "";
        String agencia = "";
        int numero;
        int saldo;

        System.out.println("Por favor, digite o número da Agência !");
        numero = scanner.nextInt();

        System.out.println("Por favor, digite qual a sua Agência !");
        agencia = scanner.next();

        System.out.println("Por favor, digite o seu nome!");
        nomeCliente = scanner.next();

        System.out.println("Por favor, digite o seu saldo!");
        saldo = scanner.nextInt();

        System.out.println("Olá " + nomeCliente + ", obrigado por criar uma conta em nosso banco, sua agência é " + agencia + ", conta " + numero + " e seu saldo " + saldo + " já está disponível para saque");
    }
}