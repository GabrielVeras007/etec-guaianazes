import java.util.Scanner;
public class Exercicio4 {
	public static void main (String [] args) {
		Scanner leia = new Scanner(System.in);
		int dias, meses, anos;
		System.out.println("Escreva o tanto de dias:");
		dias = leia.nextInt();
			anos = dias/365;
			meses = dias/30;
				System.out.println("Os meses é "+meses+" e os anos são "+anos);
	}
}