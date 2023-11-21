import java.util.Scanner;
public class Exercicio09 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		
		int i, a[], b[], c[], j, t = 0, in;
		
		a = new int [10];
		b = new int [10];
		c = new int [20];
		
		
		for(i = 0; i<a.length; i++) {
			System.out.println("Insira o "+(i+1)+" º Elemento do Vetor A:");
			a[i] = leia.nextInt();
		}
		
		
		for(j = 0; j<b.length; j++) {
			System.out.println("Insira o "+(j+1)+" º Elemento do Vetor B:");
			b[j] = leia.nextInt();
		}
		
		for(i = 0; i<a.length; i++) {
			for(j = 0; j<b.length; j++) {
				if(a[i] == b[j]) {
					c[t] = a[i];
					t++;
				}
			}
		}
		System.out.print("A = B[ ");
		for(in = 0; in<t; in++) {
			System.out.print(c[in] + " ");
		}System.out.print("]");
		
	

	}

}
