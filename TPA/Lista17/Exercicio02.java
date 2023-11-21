import java.util.Scanner;
public class Exercicio02 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		
		final int TAM  = 5;
		int i, a[], j, r;
		
		a = new int [TAM];
		
		for(i = 0; i< TAM; i++) {
			System.out.println("Insira o "+(i + 1)+" Elemento:");
			a[i] = leia.nextInt();
		}
		
		for(i = 0; i < TAM; i++) {
			for(j = 1; j < 11; j++) {
				r = a[i] * j;
				System.out.println(a[i]+ " X "+j+" = "+r);
			}
			System.out.println();
		}
	
		leia.close();

	}

}
