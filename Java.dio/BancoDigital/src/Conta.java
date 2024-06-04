import java.util.ArrayList;
import java.util.List;

public class Conta {

    private int agencia;
    private int numero;
    private double saldo;
    private Cliente cliente;
    private List<Transferencia> extrato;

    private static final int AGENCIA_PADRAO = 1;
    private static int SEQUENCIAL = 0;

    public Conta(Cliente cliente){
        this.agencia = AGENCIA_PADRAO;
        this.numero = SEQUENCIAL++;
        this.saldo = 0;
        this.cliente = cliente;
        this.extrato = new ArrayList<>();
    }

    public int getAgencia() {
        return agencia;
    }

    public int getNumero() {
        return numero;
    }

    public double getSaldo() {
        return saldo;
    }

    private void incrementarSaldo(double valor){
        this.saldo += valor;
    }

    private void subtrairSaldo(double valor) throws ExceptionSaldoInsuficiente{
        if (valor < getSaldo()){
            this.saldo -= valor;
        } else {
            throw new ExceptionSaldoInsuficiente(valor, saldo);
        }
    }

    @Override
    public String toString() {
        return  "Agencia: " + agencia +
                ", Numero: " + numero +
                ", Saldo: " + saldo +
                ", Titular:" + cliente.getNome();
    }

    public void transferir(double valor, Conta contaDestino){
        try {
            this.subtrairSaldo(valor);
            this.extrato.add(new Transferencia(contaDestino.cliente.getNome(), -valor));
            contaDestino.incrementarSaldo(valor);
            contaDestino.extrato.add(new Transferencia(this.cliente.getNome(), valor));
        } catch (ExceptionSaldoInsuficiente e) {
            System.out.println(e.getMessage());
        }
    }

    public void sacar(double valor){
        try {
            subtrairSaldo(valor);
            extrato.add(new Transferencia("Saque", -valor));
        } catch (ExceptionSaldoInsuficiente e){
            System.out.println(e.getMessage());
        }
    }

    public void depositar(double valor){
        incrementarSaldo(valor);
        extrato.add(new Transferencia("Deposito", valor));
    }

    public void imprimirStatus(){
        System.out.println(this);
    }

    public void imprimirExtato(){
        System.out.println("Extrato Conta de: " + this.cliente.getNome());
        System.out.println(this.extrato);
    }

}
