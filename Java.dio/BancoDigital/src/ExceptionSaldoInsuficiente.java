public class ExceptionSaldoInsuficiente extends Exception{

    public ExceptionSaldoInsuficiente(double valor, double saldo){
        super(String.format("O valor R$%.2f a ser retirado é maior que o saldo de R$%.2f", valor, saldo));
    }
}
