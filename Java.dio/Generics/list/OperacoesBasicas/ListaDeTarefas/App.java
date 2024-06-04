package list.OperacoesBasicas.ListaDeTarefas;

public class App {
    public static void main(String[] args) {
        ListaTarefa list = new ListaTarefa();

        list.adicionarTarefa("Tarefa a");
        System.out.println("size: " + list.obterNumeroTotalTarefas());

        list.adicionarTarefa("Tarefa a");
        System.out.println("size: " + list.obterNumeroTotalTarefas());

        list.adicionarTarefa("Tarefa b");
        System.out.println("size: " + list.obterNumeroTotalTarefas());

        list.removerTarefa("Tarefa a");

        System.out.println("tarefas: " + list.obterDescricoesTarefas());
    }
}
