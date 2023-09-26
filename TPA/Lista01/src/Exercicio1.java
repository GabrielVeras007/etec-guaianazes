import java.util.Scanner;
public class Exercicio1 {
	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		double base,h, area;
		System.out.println("Insira a base do Triângulo:");
				base = leia.nextDouble();
		System.out.println("Insira a altura do Triangulo:");
				h = leia.nextDouble();
				area = (base*h)/2;
						System.out.println("A area do triangulo é "+area);
	}
}