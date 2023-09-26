import java.util.Scanner;
public class Exercicio2 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int n;
		System.out.println("Insira o número:");
		n = leia.nextInt();
		if(n==0) {
			System.out.println("Número Neutro");
		} else {
			if(n<0) {
				System.out.println("Número Negativo");
			} else {
				System.out.println("Número Positivo");
			}
		}
		leia.close();
	}
		
}
