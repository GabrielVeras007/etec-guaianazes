import java.util.Scanner;
public class Exercicio11 {

	public static void main(String[] args) {
		Scanner leia = new 	Scanner(System.in);
		
		int i, a[], x;
		boolean e = false;
		a = new int [10];
		
		
		for(i=0; i < a.length; i++) {
			System.out.println("Insira o "+(i + 1)+"º Elemento");
			a[i] = leia.nextInt();
		}
		
		System.out.println("Insira o elemento que deseja saber se existe armazenado:");
		x = leia.nextInt();
		
		for(i = 0; i < a.length; i++) {
			 
			if(a[i] == x) {
				e = true;
				break;
			}
			if(!e) {
				e = false;
			}
		}
		
		if( e == true) {
			System.out.println("O Elemento existe no Armazenamento.");
		}else {
			System.out.println("O Elemento não existe no Armazenamento.");
		}
		
		leia.close();
	}

}
