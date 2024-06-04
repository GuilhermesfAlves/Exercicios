import java.util.Scanner;

public class Contador {
	public static void main(String[] args) {
		Scanner terminal = new Scanner(System.in);
        int parametroUm;
		int parametroDois;

        System.out.println("Digite o primeiro parâmetro");
		parametroUm = terminal.nextInt();
		System.out.println("Digite o segundo parâmetro");
		parametroDois = terminal.nextInt();
		
		try {
			contar(parametroUm, parametroDois);
		} catch (ParametrosInvalidosException e) {
			System.out.println("Exceção capturada: " + e.getMessage());
		} finally{
            terminal.close();
        }
	}

	static void contar(int parametroUm, int parametroDois ) throws ParametrosInvalidosException {
		//validar se parametroUm é MAIOR que parametroDois e lançar a exceção
        if (parametroUm > parametroDois) 
            throw new ParametrosInvalidosException(parametroUm, parametroDois);
        
		int contagem = parametroDois - parametroUm;

        for (int i = 0; i < contagem; i++)
            System.out.println(i);
        
    }
}