
public class Main {
    public static void main(String[] args) {
        Cliente Guilherme = new Cliente("Guilherme Alves");
        Cliente Paula = new Cliente("Paula Teixeira");

        Guilherme.contaCorrente.depositar(1000000);
        Paula.contaPoupanca.depositar(5);

        Paula.contaCorrente.sacar(6);
        Guilherme.contaCorrente.transferir(5, Paula.contaCorrente);

        Guilherme.contaCorrente.imprimirExtato();
        Paula.contaCorrente.imprimirExtato();
    }
}