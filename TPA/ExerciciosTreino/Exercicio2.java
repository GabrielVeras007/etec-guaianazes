import java.util.Scanner;
public class Exercicio2 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int n,s;
		
		System.out.println("Insira um n�mero:");
		n = leia.nextInt();
		s = n/n % 0;
		
		if( s == 0 ) {
			System.out.println("O n�mero"+n+"� primo");
		}else
			System.out.println("O n�mero"+n+"n�o � primo");
		
		leia.close();
	}
}
