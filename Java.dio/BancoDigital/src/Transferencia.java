import java.util.Date;

public class Transferencia {

    private String nomeDestino;
    private double valor;
    private Date data;

    public Transferencia(String nomeDestino, double valor) {
        this.nomeDestino = nomeDestino;
        this.valor = valor;
        this.data = new Date();
    }

    private String formatarValor(){
        return String.format("R$%.2f", valor);
    }

    private String formatarData(){
        return String.format("%02d/%02d/%4d %02dh%02dm%02ds",data.getDay() + 2, data.getMonth() + 1, data.getYear() + 1900,
                data.getHours(), data.getMinutes(), data.getSeconds());
    }

    @Override
    public String toString() {
        String Token = (valor > 0)? "De: ": "Para: ";

        return  Token + nomeDestino +
                ", Valor: " + formatarValor() +
                ", Data: " + formatarData() + "\n";
    }
}
