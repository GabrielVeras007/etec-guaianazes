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
			System.out.println("Este usu�rio � da 1� faixa et�ria");
		
		}
		if(p<=30) {
			System.out.println("Este usu�rio � da 2� faixa et�ria");

		}
		if(p<=45) {
			System.out.println("Este usu�rio � da 3� faixa et�ria");
	
		}
		if(p<=60) {
			System.out.println("Este usu�rio � da 4� faixa et�ria");

		}
		if(p>60) {
			System.out.println("Este usu�rio � da 5� faixa et�ria");
	
		}
		
		leia.close();
	
		}
		
		
	}


