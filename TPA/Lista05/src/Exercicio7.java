import java.util.Scanner;
public class Exercicio7 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		String nomevelho, nomenovo, nome;
		int idadevelho, idadenovo, idade;

		System.out.println("Insira seu nome:");
		nome = leia.next();
		System.out.println("Insira a sua Idade") ;
		idade = leia.nextInt();
		nomevelho = nome;
		nomenovo = nome;
		idadevelho = idade;
		idadenovo = idade;
		System.out.println("Insira seu nome:");
		nome = leia.next();
		System.out.println("Insira a sua Idade");
		idade = leia.nextInt();
		if(idade > idadevelho) {
			nomevelho = nome;
			idadevelho = idade;
		}else if(idade < idadenovo) {
			nomenovo = nome;
			idadenovo=idade;
		}
		System.out.println("Insira seu nome:");
		nome = leia.next();
		System.out.println("Insira a sua Idade");
		idade = leia.nextInt();
		if(idade > idadevelho) {
			nomevelho = nome;
			idadevelho = idade;
		}else if(idade < idadenovo) {
			nomenovo = nome;
			idadenovo=idade;
		}
		  System.out.println("Insira seu nome:");
		     nome = leia.next();
		  System.out.println("Insira a sua Idade");
			 idade = leia.nextInt();
		  if(idade > idadevelho) {
					nomevelho = nome;
					idadevelho = idade;
		}else if(idade < idadenovo) {
					nomenovo = nome;
					idadenovo=idade;
		} 
		  System.out.println("Insira seu nome:");
			 nome = leia.next();
		  System.out.println("Insira a sua Idade");
			 idade = leia.nextInt();
		 if(idade > idadevelho) {
				nomevelho = nome;
				idadevelho = idade;
		}else if(idade < idadenovo) {
				nomenovo = nome;
				idadenovo=idade;
		}
		System.out.println("O mais velho tem "+idadevelho+" e se chama "+nomevelho);
		System.out.println("O mais novo tem "+idadenovo+" e se chama "+nomenovo);
		
		leia.close();
	} 

}
