import java.util.Scanner;
public class Exercicio1 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i = 1, p;
		
		do {		
		System.out.println("Entre com a idade de 15 pessoas:");
		p = leia.nextInt();
		i++;
		
		}while(i<=15);
		
		if(p<=15) {
			System.out.println("Este usuário é da 1ª faixa etária");
		
		}
		if(p<=30) {
			System.out.println("Este usuário é da 2ª faixa etária");

		}
		if(p<=45) {
			System.out.println("Este usuário é da 3ª faixa etária");
	
		}
		if(p<=60) {
			System.out.println("Este usuário é da 4ª faixa etária");

		}
		if(p>60) {
			System.out.println("Este usuário é da 5ª faixa etária");
	
		}
		
		leia.close();
	
		}
		
		
	}


