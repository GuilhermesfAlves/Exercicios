package list.OperacoesBasicas.CarrinhoDeCompras;

public class App {
    public static void main(String[] args) {
        CarrinhoCompra carrinhoCompra = new CarrinhoCompra();

        carrinhoCompra.adicionarItem("sabão", 10.00, 2);
        carrinhoCompra.adicionarItem("macarrão", 6.99, 3);

        System.out.println("valor total: " + carrinhoCompra.calcularValorTotal());
        System.out.println(carrinhoCompra.nomeItens());
    }
}
