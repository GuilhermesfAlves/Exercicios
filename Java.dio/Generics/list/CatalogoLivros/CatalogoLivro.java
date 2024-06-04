package list.CatalogoLivros;

import java.util.ArrayList;
import java.util.List;

public class CatalogoLivro {
    List<Livro> livros;

    public CatalogoLivro() {
        this.livros = new ArrayList<>();
    }

    public void adicionarLivro(String titulo, String autor, int anoPublicacao){
        livros.add(new Livro(titulo,autor,anoPublicacao));
    }

    public List<Livro> procurarPorAutor(String autor){
        List<Livro> livrosDoAutor = new ArrayList<>();

        if (livros.isEmpty())
            return livrosDoAutor;

        for (Livro l : livros){
            if (l.getAutor().equals(autor)){
                livrosDoAutor.add(l);
            }
        }

        return livrosDoAutor;
    }

    public List<Livro> procurarPorIntervaloAno(int anoInicial, int anoFinal){
        List<Livro> livrosNoIntervalo = new ArrayList<>();

        if (livros.isEmpty())
            return livrosNoIntervalo;

        for (Livro l : livros){
            int anoPublicacaoLivroAtual = l.getAnoPublicacao();
            if (livroNoIntervaloDeAno(anoInicial, anoFinal, anoPublicacaoLivroAtual)){
                livrosNoIntervalo.add(l);
            }
        }

        return livrosNoIntervalo;
    }

    private boolean livroNoIntervaloDeAno(int anoInicial, int anoFinal, int anoPublicacao){
        return (anoPublicacao <= anoFinal) && (anoPublicacao >= anoInicial);
    }

    public Livro pesquisarPorTitulo(String titulo){

        for(Livro l : livros){
            if (l.getNome().equals(titulo)) {
                return l;
            }
        }

        return null;
    }
}

