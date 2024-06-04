import java.util.*;

public class Dev {

    private String nome;
    private final Set<Conteudo> conteudosInscritos = new LinkedHashSet<>();
    private final Set<Conteudo> conteudosConcluidos = new LinkedHashSet<>();

    public Dev(String nome) {
        this.nome = nome;
    }

    public Set<Conteudo> getConteudosInscritos() {
        return conteudosInscritos;
    }

    public Set<Conteudo> getConteudosConcluidos() {
        return conteudosConcluidos;
    }

    public void inscreverEmBootcamp(Bootcamp bootcamp){
        conteudosInscritos.addAll(bootcamp.getConteudos());
        bootcamp.inscreverDev(this);
    }

    public void progredir(){
        Optional<Conteudo> conteudo = this.conteudosInscritos.stream().findFirst();

        if (conteudo.isPresent()){
            conteudosConcluidos.add(conteudo.get());
            conteudosInscritos.remove(conteudo.get());
        } else {
            System.err.println("Erro: Você tentou progredir, mas não está matriculado em nenhum conteudo.");
        }
    }

    public double calcularTotalXp(){
        return this.conteudosConcluidos.stream().mapToDouble(Conteudo::calcularXp).sum();
    }

    public String calcularPorcentagemdoBootcampConcluida(Bootcamp bootcamp){
        long conteudosConcluidosDoBootcamp = getConteudosConcluidos().stream()
                .filter(conteudo -> conteudo.getBootcamp() == bootcamp).count();
        long conteudosInscritosDoBootcamp = getConteudosInscritos().stream()
                .filter(conteudo -> conteudo.getBootcamp() == bootcamp).count();

        return String.format("%.2f",(double)conteudosConcluidosDoBootcamp / (conteudosInscritosDoBootcamp + conteudosConcluidosDoBootcamp)*100) + "%";
    }

    public void estudar(){
        Random random = new Random();
        int numeroAleatorioDeVezes = random.nextInt(1,5);

        for (int i = 0; i < numeroAleatorioDeVezes; i++) {
            progredir();
        }
    }
}

