import java.util.Scanner;
public class Exercicio2 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int m;
		System.out.println("Insira o n�mero do M�S:");
		m = leia.nextInt();
		
		switch(m) {
		
		case 1:
			System.out.println("O m�s Janeiro tem 31 dias.");
			break;
		case 2:
			System.out.println("O m�s Fevereiro tem 28 dias.");
			break;
		case 3:
			System.out.println("O m�s Mar�o tem 31 dias.");
			break;
		case 4:
			System.out.println("O m�s Abril tem 30 dias.");
			break;
		case 5:
			System.out.println("O m�s Maio tem 31 dias.");
			break;
		case 6:
			System.out.println("O m�s Junho tem 30 dias.");
			break;
		case 7:
			System.out.println("O m�s Julho tem 31 dias.");
			break;
		case 8:
			System.out.println("O m�s Agosto tem 31 dias.");
			break;
		case 9:
			System.out.println("O m�s Setembro tem 30 dias.");
			break;
		case 10:
			System.out.println("O m�s Outubro tem 31 dias.");
			break;
		case 11:
			System.out.println("O m�s Novembro tem 30 dias.");
			break;
		case 12:
			System.out.println("O m�s Dezembro tem 31 dias.");
			break;
		default:
			System.out.println("O n�mero insirado � Invalido/Inexistente!");
		}
		leia.close();
	}

}
