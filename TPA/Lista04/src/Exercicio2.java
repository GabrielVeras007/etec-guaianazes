import java.util.Scanner;
public class Exercicio2 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int n;
		System.out.println("Insira o n�mero:");
		n = leia.nextInt();
		if(n==0) {
			System.out.println("N�mero Neutro");
		} else {
			if(n<0) {
				System.out.println("N�mero Negativo");
			} else {
				System.out.println("N�mero Positivo");
			}
		}
		leia.close();
	}
		
}
