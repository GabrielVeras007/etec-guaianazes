import java.util.Scanner;
public class Exercicio2 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int n,s,sd;
		
		System.out.println("Insira um número:");
		n = leia.nextInt();
		s = n % n;
		sd = n % 1;
		
		if( s == 0 && sd == 0 ) {
			System.out.println("O número "+n+" é primo");
		}else
			System.out.println("O número "+n+" não é primo");
		
		leia.close();
	}
}
