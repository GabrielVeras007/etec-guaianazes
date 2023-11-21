import java.util.Scanner;
public class Exercicio07 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		
		int i, a[], b[], j;
		
		a = new int [15];
		b = new int [15];
		
		for(i = 0; i<a.length; i++) {
			System.out.println("Insira o "+(i+1)+" Elemento:");
			a[i] = leia.nextInt();
		}
		
		for(i = 0; i<a.length; i++) {
				int f = a[i];
			for(j  = 1; j<a[i]; j++) {
				 f = f * j; 
				b[i] = f;
			}
			System.out.println("O fatorial do elemento"+(i+1)+" é "+b[i]);
		}
		leia.close();
	}

}
