import java.util.Scanner;
public class Exercicio1 {
	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int anonasc, anoatual, idade;
		System.out.println("Escreva seu ano de nascimento:");
		anonasc = leia.nextInt();
		System.out.println("Escreva o ano atual:");
		anoatual = leia.nextInt();
		idade = anoatual-anonasc;
		System.out.println("Sua idade é "+idade+" anos");
		if(idade<18) {
			System.out.println("Menor de idade");
		}
		else {
			System.out.println("Maior de idade");
		}
	}

}
