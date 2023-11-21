import java.util.Scanner;
public class Exercicio05 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		
		int i, a[], j;
		
		a = new int [10];
		
		for(i = 0; i<a.length; i++) {
			System.out.println("Insira o "+(i+1)+" Elemento:");
			a[i] = leia.nextInt();
		}
		
		for(i = 0; i<a.length; i++) {
			System.out.println("Todos os divisores do respectivo elemento "+a[i]);
			for(j = 1; j<a[i]; j++) {
				if(a[i] % j == 0) {
					System.out.println(j);
				}
			}
			System.out.println();
		}

	}

}
