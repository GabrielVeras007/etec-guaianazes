import java.util.Scanner;
public class Exercicio2 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int m;
		System.out.println("Insira o número do MÊS:");
		m = leia.nextInt();
		
		switch(m) {
		
		case 1:
			System.out.println("O mês Janeiro tem 31 dias.");
			break;
		case 2:
			System.out.println("O mês Fevereiro tem 28 dias.");
			break;
		case 3:
			System.out.println("O mês Março tem 31 dias.");
			break;
		case 4:
			System.out.println("O mês Abril tem 30 dias.");
			break;
		case 5:
			System.out.println("O mês Maio tem 31 dias.");
			break;
		case 6:
			System.out.println("O mês Junho tem 30 dias.");
			break;
		case 7:
			System.out.println("O mês Julho tem 31 dias.");
			break;
		case 8:
			System.out.println("O mês Agosto tem 31 dias.");
			break;
		case 9:
			System.out.println("O mês Setembro tem 30 dias.");
			break;
		case 10:
			System.out.println("O mês Outubro tem 31 dias.");
			break;
		case 11:
			System.out.println("O mês Novembro tem 30 dias.");
			break;
		case 12:
			System.out.println("O mês Dezembro tem 31 dias.");
			break;
		default:
			System.out.println("O número insirado é Invalido/Inexistente!");
		}
		leia.close();
	}

}
