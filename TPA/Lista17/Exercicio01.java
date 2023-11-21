import java.util.Scanner;
public class Exercicio01 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		
		final int TAM = 20;
		int i, a[], b[];
		
		a = new int[TAM];
		b = new int[TAM];
		int j = 0;
		for(i = 0; i<TAM; i++) {
			System.out.println("Insira o "+(i + 1)+" Elemento:");
			a[i] = leia.nextInt();
		}
		
		for(i = 0; i<TAM; i++) {
			int c = a[i] % 2;
			if(c == 0) {
				b[j] = a[i];
				j++;
			}
		}
		
		for(i = 0; i<TAM; i++) {
			int c = a[i] % 2;
			if(c != 0) {
				b[j] = a[i];
				j++;
			}
		}
			
		System.out.println("Os números Pares e Ímpares são:");
		for(i = 0; i<TAM; i++) {
			System.out.print(b[i]+ " ");
		}
		
		leia.close();
		
		}
		
		
	}


