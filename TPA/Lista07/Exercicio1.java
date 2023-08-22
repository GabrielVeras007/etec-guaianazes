import java.util.Scanner;
public class Exercicio1 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int d;
		System.out.println("Entre com o último número da placa:");
		d = leia.nextInt();
		
		switch(d) {
		 	case 1:
		 	case 2:
		 		System.out.println("O dia que o veículo não poderá circular é SEGUNDA-FEIRA");
		 		break;
		 	case 3:
		 	case 4:
		 		System.out.println("O dia que o veículo não poderá circular é TERÇA-FEIRA");
		        break;
		 	case 5:
		 	case 6:
		 		System.out.println("O dia que o veículo não poderá circular é QUARTA-FEIRA");
		        break;
		 	case 7:
		 	case 8:
		 		System.out.println("O dia que o veículo não poderá circular é QUINTA-FEIRA");
		        break;
		 	case 9:
		 	case 0:
		 		System.out.println("O dia que o veículo não poderá circular é SEXTA-FEIRA");
		        break;
		    default:
		    	System.out.println("Número da placa é inválido");
		
		}
		leia.close();
	}

}