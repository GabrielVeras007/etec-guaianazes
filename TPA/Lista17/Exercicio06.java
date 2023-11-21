import java.util.Scanner;
public class Exercicio06 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		
		int i, a[];
		
		a = new int [11];
		
		for(i = 1; i<a.length; i++) {
			System.out.println("Insira o "+(i+1)+" Elemento:");
			a[i] = leia.nextInt();
			a[i] = (int) Math.pow(2, i);
			
		}
		
		for(i = 1; i<a.length; i++) {
			System.out.println("A["+( i )+"] = "+a[i]);
		}
		leia.close();
	}

}
