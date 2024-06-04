package list.OperacoesBasicas.ListaDeTarefas;

public class Tarefa {
    private String descricao;

    public Tarefa(String descricao){
        this.descricao = descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getDescricao() {
        return descricao;
    }

    @Override
    public String toString(){
        return this.descricao;
    }
}
