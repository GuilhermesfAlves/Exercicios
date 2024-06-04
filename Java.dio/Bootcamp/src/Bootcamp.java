import java.time.LocalDate;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

public class Bootcamp {

    private String nome;
    private String descricao;
    private final LocalDate dataInicial = LocalDate.now();
    private final LocalDate dataFinal = dataInicial.plusDays(45);
    private Set<Dev> devsInscritos;
    private Set<Conteudo> conteudos;

    public Bootcamp(String nome, String descricao) {
        this.nome = nome;
        this.descricao = descricao;
        this.devsInscritos = new HashSet<>();
        this.conteudos = new LinkedHashSet<>();
    }

    public String getNome() {
        return nome;
    }

    public Set<Conteudo> getConteudos() {
        return conteudos;
    }

    public void inscreverDev(Dev dev){
        if (!this.devsInscritos.contains(dev)) {
            this.devsInscritos.add(dev);
        } else {
            System.err.println("Este dev já está inscrito neste bootcamp");
        }
    }

    public void adicionarConteudo(Conteudo conteudo){

        if (this.conteudos.contains(conteudo))
            return;

        conteudo.setBootcamp(this);
        this.conteudos.add(conteudo);
    }
}
