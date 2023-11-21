import java.util.Scanner;
public class Exercicio12 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i, a[], j = 0;
		boolean palindromo = true;
		
		
		a = new int [10];
		
		for(i = 0; i < a.length; i++) {
			System.out.println("Insira o "+( i + 1)+"º Elemento:");
			a[i] = leia.nextInt();
		}
		
		for(i = a.length - 1; i >= 0; i--) {
			if(a[i] == a[j]) {
				palindromo = true;
			}else {
				palindromo = false;
				break;
			}
			j++;
		}
		
		if(palindromo) {
			System.out.println("O elemento inserido é um Palindromo.");
		}else {
			System.out.println("O elemento inserido não é um Palindromo.");
		}

	}

}
