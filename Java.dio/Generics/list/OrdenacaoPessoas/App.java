package list.OrdenacaoPessoas;

public class App {
    public static void main(String[] args) {
        OrdenacaoPessoas ordenacaoPessoas = new OrdenacaoPessoas();

        ordenacaoPessoas.adicionarPessoa("nome1",18,1.78);
        ordenacaoPessoas.adicionarPessoa("nome2",12,1.56);
        ordenacaoPessoas.adicionarPessoa("nome3",19,1.67);
        ordenacaoPessoas.adicionarPessoa("nome4",25,1.80);

        System.out.println(ordenacaoPessoas.OrdenarPorAltura());
        System.out.println();
        System.out.println(ordenacaoPessoas.OrdenarPorIdade());
    }
}
