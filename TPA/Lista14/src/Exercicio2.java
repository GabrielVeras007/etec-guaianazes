import java.util.Scanner;
public class Exercicio2 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i = 2,an,at,c,l;
		
		do {
			System.out.println("Insira o Ano Atual:");
			at = leia.nextInt();
			System.out.println("Insira o seu Ano de Nascimento:");
			an = leia.nextInt();
			c = at - an;
			if(c<18) {
				System.out.println("O usuário é de Menor de Idade "+c+" anos");
			}else {
				System.out.println("O usuário é de Maior de Idade "+c+" anos");
			}
			System.out.println("Deseja continuar a Execução? (1- Para SIM ou 2- para NÃO)");
			l = leia.nextInt();
			
		}while(l<2);
		leia.close();
	}

}
