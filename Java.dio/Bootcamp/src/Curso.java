public class Curso extends Conteudo{

    private int cargaHoraria;

    public Curso(String nome, String descicao, int cargaHoraria) {
        super(nome, descicao);
        this.cargaHoraria = cargaHoraria;
    }

    @Override
    public String toString() {
        return "titulo: " + super.getTitulo() +
                ", descricao: " + super.getDescicao() +
                ", cargaHoraria: " + cargaHoraria +
                '\n';
    }

    @Override
    public double calcularXp() {
        return XP_PADRAO * cargaHoraria;
    }
}
