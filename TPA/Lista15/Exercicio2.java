import java.util.Scanner;
public class Exercicio2 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		
		int i, n, c = 0;
		
		System.out.println("Insira o N�mero:");
		n = leia.nextInt();
		
		for(i=n;i>0;i++) {
			c = n%2;
			
		}if(c==1) {
			System.out.println("O n�mero � PRIMO");
		}else
			System.out.println("O n�mero N�O � PRIMO");
			
		leia.close();
		
	}

}
