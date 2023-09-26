import java.util.Scanner;
public class Exercicio1 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int idade, anoatual, anonasc;
		System.out.println("Insira o seu Ano de Nascimento:");
		anonasc = leia.nextInt();
		System.out.println("Insira o Ano Atual:");
		anoatual = leia.nextInt();
		idade = anoatual - anonasc;
		if(idade<10){
			System.out.println("Criança");
		}else if(idade>10 && idade<18) {
				System.out.println("Adolescente");
			}else if(idade>18 && idade<60) {
					System.out.println("Adulto");
				}else {
					System.out.println("Idoso");
				}
		leia.close();
	}

}
