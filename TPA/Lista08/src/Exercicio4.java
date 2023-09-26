import java.util.Scanner;
public class Exercicio4 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int c;
		System.out.println("Insira o código do lanche desejado:");
		c = leia.nextInt();
		
		switch(c) {
		case 1:
			System.out.println("Cachorro quente, Valor R$ 8,00");
			break;
		case 2:
			System.out.println("Cheeseburger, Valor R$ 12,00");
			break;
		case 3:
			System.out.println("X-Salada, Valor R$ 15,00");
			break;
		case 4:
			System.out.println("Misto Quente, Valor R$ 11,00");
			break;
		case 5:
			System.out.println("Pão na chapa, Valor R$ 6,00");
			break;
		default:
			System.out.println("Código Inválido/Inexistente");

		}
		leia.close();
	}

}
