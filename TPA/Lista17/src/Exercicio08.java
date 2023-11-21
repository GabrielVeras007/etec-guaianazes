import java.util.Scanner;
public class Exercicio08 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		
		int i, a[], b[],j;
		
		a =  new int [10];
		b = new int [10];
		
		for(i = 0; i <a.length; i++) {
			System.out.println("Insira o "+(i+1)+" Elemento:");
			a[i] = leia.nextInt();
		}
		
		for(i = 0; i<a.length; i++) {
			b[i] = 0;
			for(j = i; j<a.length; j++) {
				 b[i] = b[i] + a[j];
			}
			System.out.println("B["+i+"] = "+b[i]);
		}
		leia.close();
		}

	}


