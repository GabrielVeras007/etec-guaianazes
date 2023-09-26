import java.util.Scanner;
public class Exercicio3 {
	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int numero, calc;
		System.out.println("Insira o numero:");
		numero = leia.nextInt();
		calc = numero % 2;
		if(calc==0) {
			System.out.println("Seu número é Par");
		}
		else {
			System.out.println("Seu número é Impar");
		}
	}
}
