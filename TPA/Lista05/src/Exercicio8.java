import java.util.Scanner;
public class Exercicio8 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		double n1, n2, calcn, exame, calce;
		System.out.println("Insira a Primeira Nota:");
		n1 = leia.nextDouble();
		System.out.println("Insira a Segunda Nota:");
		n2 = leia.nextDouble();
		calcn = (n1 + n2) / 2;
		if(calcn<3) {
			System.out.println("Aluno está REPROVADO");
		}else if(calcn>=6) {
			System.out.println("Aluno está APROVADO");
		}else {
			System.out.println("Aluno está em EXAME.");
			System.out.println("Insira a Nota de Exame:");
			exame = leia.nextDouble();
			calce = (calcn+exame) / 2;
			if(calce>=6) {
				System.out.println("Auno está APROVADO");
			}else {
				System.out.println("Aluno está REPROVADO");
			}
		}
		leia.close();
	}

}
