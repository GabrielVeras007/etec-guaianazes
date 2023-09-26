import java.util.Scanner;
public class Exercicio3 {
	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		double sminimo, susuario;
		int qminimo;
		System.out.println("Insira o valor do salario minimo: ");
		sminimo = leia.nextDouble();
		System.out.println("Insira o seu salario: ");
		susuario = leia.nextDouble();
		qminimo = (int) (susuario/sminimo);
		System.out.println("Você tem "+qminimo+" Salario Minimos");
	}
}
