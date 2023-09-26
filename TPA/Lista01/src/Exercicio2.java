import java.util.Scanner;
	public class Exercicio2 {
		public static void main(String[] args) {
			Scanner leia = new Scanner(System.in);
			int atual, data, idade;
			System.out.println("Escreva o ano atual:");
			atual = leia.nextInt();
			System.out.println("Escreva o ano de nascimento:");
			data = leia.nextInt();
			idade = atual - data;
				System.out.println("A idade é "+idade);
				
		}
	}
