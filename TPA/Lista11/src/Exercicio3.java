import java.util.Scanner;
public class Exercicio3 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i = 1, base, expoente;
		
		System.out.println("Insira o número da Base:");
		base = leia.nextInt();
		System.out.println("Insira o número do Expoente:");
		expoente = leia.nextInt();
		
		while(expoente>0){
			i = i * base;
			expoente--;
			
	}
	System.out.println("O valor da Potenciação é "+i);
	leia.close();
	}
}
