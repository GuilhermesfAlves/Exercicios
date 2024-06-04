package set.OperacoesBasicas;

public class App {
    public static void main(String[] args) {
        ConjuntoConvidados conjuntoConvidados = new ConjuntoConvidados();

        System.out.println("Existem " + conjuntoConvidados.contadorConvidados() + " convidados");

        conjuntoConvidados.adicionarConvidado("Guilherme", 1234);
        conjuntoConvidados.adicionarConvidado("Pessoa2", 12);
        conjuntoConvidados.adicionarConvidado("Pessoa3", 12);
        conjuntoConvidados.adicionarConvidado("Pessoa4", 13);

//        conjuntoConvidados.removerConvidadoPorCodigo(12);

        conjuntoConvidados.exibirConvidados();
    }
}
