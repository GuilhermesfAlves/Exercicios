import java.awt.font.NumericShaper;
import java.time.LocalDate;

public class Main {
    public static void main(String[] args) {
        Curso curso1 = new Curso("curso java",
                "descrição curso java",
                8);

        Curso curso2 = new Curso("curso js",
                "descricao curso js",
                4);

        Mentoria mentoria = new Mentoria("Mentoria de java",
                "descricao mentoria de java",
                LocalDate.now().plusDays(3));


        Bootcamp bootcamp = new Bootcamp("Bootcamp Java Developer",
                "Descrição Bootcamp Java Developer");
        bootcamp.adicionarConteudo(curso1);
        bootcamp.adicionarConteudo(curso2);
        bootcamp.adicionarConteudo(mentoria);

        Dev devGuilherme = new Dev("Guilherme");
        devGuilherme.inscreverEmBootcamp(bootcamp);
        System.out.println("Conteúdos Inscritos Guilherme:" + devGuilherme.getConteudosInscritos());
        devGuilherme.estudar();
        System.out.println("-");
        System.out.println("Conteúdos Inscritos Guilherme:" + devGuilherme.getConteudosInscritos());
        System.out.println("Conteúdos Concluídos Guilherme:" + devGuilherme.getConteudosConcluidos());
        System.out.println("XP:" + devGuilherme.calcularTotalXp());
        System.out.println("Porcentagem do " + bootcamp.getNome() + "concluida: " + devGuilherme.calcularPorcentagemdoBootcampConcluida(bootcamp));

        System.out.println("-------");

        Dev devPaula = new Dev("Paula");
        devPaula.inscreverEmBootcamp(bootcamp);
        System.out.println("Conteúdos Inscritos Paula:" + devPaula.getConteudosInscritos());
        devPaula.estudar();
        System.out.println("-");
        System.out.println("Conteúdos Inscritos Paula:" + devPaula.getConteudosInscritos());
        System.out.println("Conteúdos Concluidos Paula:" + devPaula.getConteudosConcluidos());
        System.out.println("XP:" + devPaula.calcularTotalXp());
        System.out.println("Porcentagem do " + bootcamp.getNome() + "concluida: " + devPaula.calcularPorcentagemdoBootcampConcluida(bootcamp));
    }
}