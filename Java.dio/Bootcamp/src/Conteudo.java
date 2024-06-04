public abstract class Conteudo {

    private String titulo;
    private String descicao;
    private Bootcamp bootcamp;

    protected static final double XP_PADRAO = 10d;

    public Conteudo(String titulo, String descicao) {
        this.titulo = titulo;
        this.descicao = descicao;
        this.bootcamp = null;
    }

    public Bootcamp getBootcamp() {
        return bootcamp;
    }

    public void setBootcamp(Bootcamp bootcamp) {
        this.bootcamp = bootcamp;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getDescicao() {
        return descicao;
    }

    public abstract double calcularXp();
}
