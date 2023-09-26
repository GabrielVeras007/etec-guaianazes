import java.util.Scanner;
public class Exercicio1 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		double in,c;
		String us;
		System.out.println("Insira o Preço do Ingresso:");
		in = leia.nextDouble();
		System.out.println("VocÊ é Estudante (SIM ou NÃO)");
		us = leia.next();
		if(us.equalsIgnoreCase("SIM")) {
			c = in/2;
			System.out.println("O valor a Ser pago é "+c);
		}else {
			System.out.println("O valor a Ser pago é "+in);
		}
		leia.close();
	}

}
