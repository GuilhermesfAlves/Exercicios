public class Cliente {

    private String nome;
    public ContaCorrente contaCorrente;
    public ContaPoupanca contaPoupanca;

    public Cliente(String nome){
        this.nome = nome;
        this.contaCorrente = new ContaCorrente(this);
        this.contaPoupanca = new ContaPoupanca(this);
    }

    public String getNome(){
        return this.nome;
    }

}
