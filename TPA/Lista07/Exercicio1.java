import java.util.Scanner;
public class Exercicio1 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int d;
		System.out.println("Entre com o �ltimo n�mero da placa:");
		d = leia.nextInt();
		
		switch(d) {
		 	case 1:
		 	case 2:
		 		System.out.println("O dia que o ve�culo n�o poder� circular � SEGUNDA-FEIRA");
		 		break;
		 	case 3:
		 	case 4:
		 		System.out.println("O dia que o ve�culo n�o poder� circular � TER�A-FEIRA");
		        break;
		 	case 5:
		 	case 6:
		 		System.out.println("O dia que o ve�culo n�o poder� circular � QUARTA-FEIRA");
		        break;
		 	case 7:
		 	case 8:
		 		System.out.println("O dia que o ve�culo n�o poder� circular � QUINTA-FEIRA");
		        break;
		 	case 9:
		 	case 0:
		 		System.out.println("O dia que o ve�culo n�o poder� circular � SEXTA-FEIRA");
		        break;
		    default:
		    	System.out.println("N�mero da placa � inv�lido");
		
		}
		leia.close();
	}

}