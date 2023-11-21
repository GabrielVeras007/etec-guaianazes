import java.util.Scanner;
public class Exercicio13 {

	public static void main(String[] args) {
		Scanner leia = new Scanner (System.in);
		
		int i, a[], b[];
		
		a = new int [10];
		b = new int [10];
		
		for(i=0; i<a.length; i++) {
			System.out.println("Insira o "+( i + 1)+"º Elemento:");
			a[i] = leia.nextInt();
		}
		
		for(i=0; i<a.length; i++) {
			if(a[i] % 2 == 0) {
				b[i] = 1; 
			}else {
				b[i] = 0;	
			}
		}
		
		System.out.print("Valores de B: ");
		for(i=0; i<b.length; i++) {
			System.out.print(b[i]+" ");
		}
		
		leia.close();

	}

}
