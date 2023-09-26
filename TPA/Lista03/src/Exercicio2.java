import java.util.Scanner;
public class Exercicio2 {
	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		double salario, minimo, resultado;
		System.out.println("Escreva seu salario:");
		salario = leia.nextDouble();
		System.out.println("Escreva o salario minimo:");
		minimo = leia.nextDouble();
		if(salario<minimo) {
			System.out.println("Seu salario é Inadequado");
		}
		else {
			System.out.println("Seu salario é Adequado");
		}
	}
}
