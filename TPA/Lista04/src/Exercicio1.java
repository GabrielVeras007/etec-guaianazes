import java.util.Scanner;
public class Exercicio1 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		Double salario;
		System.out.println("Insira o Seu Salário:");
		salario = leia.nextDouble();
		if (salario<954.00) {
			System.out.println("Salário Abaixo do Salário Minímo");
		} else {
			System.out.println("Salário Acima do Salário Minímo");
		}
		leia.close();
	}
}
