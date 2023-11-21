import java.util.Scanner;
public class Exercicio4 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i, a[];
		double c = 0;
		final int TAM = 10;
		
		a = new int [TAM];
		
		for(i=0; i<TAM; i++) {
			System.out.println("Insira o "+(i+1)+"º número:");
			a[i] = leia.nextInt();
			c = a[i] + c;
		}
		c = c/10;
		System.out.println("A média dos Números inseridos é "+c);
		
		leia.close();
	}

}
