package list.OperacoesBasicas.ListaDeTarefas;

import java.util.List;
import java.util.ArrayList;

public class ListaTarefa {
    private final List<Tarefa> list;

    public ListaTarefa(){
        this.list = new ArrayList<>();
    }

    public void adicionarTarefa(String descricao){
        this.list.add(new Tarefa(descricao));
    }

    public void removerTarefa(String descricao){
        List<Tarefa> tarefasRemover = new ArrayList<>();

        for (Tarefa t : this.list){
            if (t.getDescricao().equals(descricao)){
                tarefasRemover.add(t);
            }
        }

        this.list.removeAll(tarefasRemover);
    }

    public int obterNumeroTotalTarefas(){
        return this.list.size();
    }

    public List<Tarefa> obterDescricoesTarefas(){
        return this.list;
    }
}
