import java.util.Scanner;
public class Exercicio2 {
	
	public static void main(String[] args) {
		Scanner leia = new Scanner (System.in);
		double distancia, capacidade, c;
		System.out.println("Insira a Distancia Percorrida:");
		distancia = leia.nextDouble();
		System.out.println("Insira a Capacidade do Tanque de Combust�vel (EM LITROS):");
		capacidade = leia.nextDouble();
		c = distancia / capacidade;
		if (c>10) {
			System.out.println("Econ�mico");
		}else {
			System.out.println("N�o Econ�mico");
		}
		leia.close();
	}

}
