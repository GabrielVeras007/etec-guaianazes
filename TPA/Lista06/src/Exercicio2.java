import java.util.Scanner;
public class Exercicio2 {
	
	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		double p, c, cp;
		
		System.out.println("Insira o pre�o do produto:");
		p = leia.nextDouble();
		if (p <= 100) {
			System.out.println("O valor � "+p);
		} else if (p <= 500) {
			c = p / 100 * 5;
			cp = p - c;
			System.out.println("O valor com desconto � " +cp);
		} else if (p <= 1000) {
			c = p / 100 * 10;
			cp = p - c;
			System.out.println("O valor com desconto � " +cp);
		} else if (p <= 2000) {
			c = p / 100 * 15;
			cp = p - c;
			System.out.println("O valor com desconto � " +cp);
		} else {
			c = p / 100 * 20;
			cp = p - c;
			System.out.println("O valor com desconto � " +cp);
		
		}
		leia.close();
	}

}
