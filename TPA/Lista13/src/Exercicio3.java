import java.util.Scanner;
public class Exercicio3 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i, idade, idadenovo=Integer.MAX_VALUE, idadevelho=Integer.MIN_VALUE;
		String nome, nomevelho="", nomenovo="";
		
		for(i=1;i<=10;i++) {
			System.out.println("Insira o nome do "+i+"º usuário:");
			nome = leia.next();
			
			System.out.println("Insira a Idade do "+i+"º usuário:");
			idade = leia.nextInt();
			
			if(idade>idadevelho) {
				idadevelho = idade;
				nomevelho = nome;
			}else if(idade<idadenovo) {
				idadenovo = idade;
				nomenovo = nome;
			}
			
		}
		System.out.println("O nome do usuário mais velho é "+nomevelho+" com a idade de "+idadevelho);
		System.out.println("O nome do usuário mais novo é "+nomenovo+" com a idade de "+idadenovo);
		leia.close();
	}

}
