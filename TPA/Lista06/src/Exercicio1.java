import java.util.Scanner;
public class Exercicio1 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		double in,c;
		String us;
		System.out.println("Insira o Pre�o do Ingresso:");
		in = leia.nextDouble();
		System.out.println("Voc� � Estudante (SIM ou N�O)");
		us = leia.next();
		if(us.equalsIgnoreCase("SIM")) {
			c = in/2;
			System.out.println("O valor a Ser pago � "+c);
		}else {
			System.out.println("O valor a Ser pago � "+in);
		}
		leia.close();
	}

}
