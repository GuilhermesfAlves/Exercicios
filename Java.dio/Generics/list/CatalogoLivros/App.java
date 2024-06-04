package list.CatalogoLivros;

public class App {
    public static void main(String[] args) {
        CatalogoLivro catalogoLivro = new CatalogoLivro();

        catalogoLivro.adicionarLivro("Frankenstein","Mary Shelley",1818);


        System.out.println(catalogoLivro.procurarPorAutor("Mary Shelley"));
        System.out.println(catalogoLivro.pesquisarPorTitulo("Frankenstein"));
    }
}
