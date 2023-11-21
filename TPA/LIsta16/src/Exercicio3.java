import java.util.Scanner;
public class Exercicio3 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i, a[], b[];
		final int TAM = 10;
		
		a = new int [TAM];
		b = new int [TAM];
		
		for(i=0; i<TAM; i++) {
			System.out.println("Insira o "+(i+1)+"º valor:");
			a[i] = leia.nextInt();
		}
		
		System.out.print("\n B[] = [ ");
		for(i=0; i<TAM; i++) {
			b[i] = a[9 - i];
			System.out.print(b[i]+" ");
		}
		System.out.print(" ]");
		
		
	}

}
