import java.util.Scanner;
public class Exercicio2 {
	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		Double altura, raio, v;
		System.out.println("Insira a Altura da lata de oléo: ");
		altura = leia.nextDouble();
		System.out.println("Insira o raio da lata de oléo : ");
		raio = leia.nextDouble();
		v = 3.14*raio*raio*altura;
		System.out.println("O volume da lata de oleo é " +v);
 }
}
