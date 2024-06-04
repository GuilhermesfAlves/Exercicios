package set.OperacoesBasicas;

import java.util.HashSet;
import java.util.Set;

public class ConjuntoConvidados {
    Set<Convidado> convidados;

    public ConjuntoConvidados() {
        this.convidados = new HashSet<>();
    }

    public void adicionarConvidado(String nome, int codigoConvite){
        if (!convidados.add(new Convidado(nome, codigoConvite)))
            System.out.println("no");
    }

    public void removerConvidadoPorCodigo(int codigoConvite){

        for (Convidado c : convidados){
            if (c.getCodigoConvite() == codigoConvite){
                convidados.remove(c);
                return;
            }
        }
    }

    public int contadorConvidados(){
        return convidados.size();
    }

    public void exibirConvidados(){
        System.out.println(convidados);
    }
}
