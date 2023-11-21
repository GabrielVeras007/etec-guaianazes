import java.util.Scanner;
public class Exercicio03 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		
		
		int i, a[], qtde[], j;
		
		a = new int [10];
		qtde = new int [10];
		
		
		for(i = 0; i< a.length; i++) {
			System.out.println("Digite "+(i+1)+"° número: ");
			a[i] = leia.nextInt();
			for(j = 1; j<=a[i]; j++) {
				
				if(a[i] % j == 0) {
					qtde[i]++;;
				}
			}
		}
		
		for(i = 0; i<a.length; i++) {
			if(qtde[i] == 2) {
				System.out.println(a[i]+" É PRIMO");
			}else {
				System.out.println(a[i]+" NÃO É PRIMO");
			}
		}
		leia.close();

	}

}
