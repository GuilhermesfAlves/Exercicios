import java.time.LocalDate;

public class Mentoria extends Conteudo{

    private LocalDate data;

    public Mentoria(String nome, String descicao, LocalDate data) {
        super(nome, descicao);
        this.data = data;
    }

    @Override
    public String toString() {
        return  "titulo: " + super.getTitulo() +
                ", descricao: " + super.getDescicao() +
                ", data: " + data +
                "\n";
    }

    @Override
    public double calcularXp() {
        return XP_PADRAO + 20d;
    }
}
