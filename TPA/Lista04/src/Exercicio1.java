import java.util.Scanner;
public class Exercicio1 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		Double salario;
		System.out.println("Insira o Seu Sal�rio:");
		salario = leia.nextDouble();
		if (salario<954.00) {
			System.out.println("Sal�rio Abaixo do Sal�rio Min�mo");
		} else {
			System.out.println("Sal�rio Acima do Sal�rio Min�mo");
		}
		leia.close();
	}
}
