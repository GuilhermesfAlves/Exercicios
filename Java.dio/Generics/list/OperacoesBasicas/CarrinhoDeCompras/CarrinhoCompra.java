package list.OperacoesBasicas.CarrinhoDeCompras;

import java.util.ArrayList;
import java.util.List;

public class CarrinhoCompra {
    List<Item> list;

    public CarrinhoCompra() {
        this.list = new ArrayList<>();
    }

    public void adicionarItem(String nome, double preco, int quantidade) {
        this.list.add(new Item(nome, preco, quantidade));
    }

    public void removerItem(String nome) {
        List<Item> ItensParaRemover = new ArrayList<>();

        for (Item i : this.list) {
            if (i.getNome().equals(nome)) {
                ItensParaRemover.add(i);
            }
        }

        this.list.removeAll(ItensParaRemover);
    }

    public double calcularValorTotal() {
        double soma = 0;

        for (Item i : this.list) {
            soma += i.getPreco();
        }

        return soma;
    }

    public List<Item> nomeItens() {
        return this.list;
    }
}