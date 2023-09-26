import java.util.Scanner;
public class Exercicio3 {
	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int valorA,valorB,valorC;
		System.out.println("Escreva o valor A:");
		valorA = leia.nextInt();
		System.out.println("Escreva o valor B:");
		valorB = leia.nextInt();
		valorC= valorA;
		valorA= valorB;
		valorB= valorC;
			System.out.println("o valor A é "+valorA+" e o Valor B é "+valorB);
	}
}

