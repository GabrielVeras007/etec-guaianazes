import java.util.Scanner;
public class Exercicio2 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int d,m;
		System.out.println("Insira o dia de seu nascimento:");
		d = leia.nextInt();
		System.out.println("Insira o n�mero do m�s do seu nascimento (1 a 12):");
		m = leia.nextInt();
		
		switch(m) {
		case 1:
			if(d<21) {
				System.out.println("O signo � Capric�rnio");
			}else {
				System.out.println("O signo � Aqu�rio");
			}
			break;
		case 2:
			if(d<19) {
				System.out.println("O signo � Aqu�rio");
			}else {
				System.out.println("O signo � Peixes");
			}
			break;
		case 3:
			if(d<20) {
				System.out.println("O signo � Peixes");
			}else {
				System.out.println("O signo � �ries");
			}
			break;
		case 4:
			if(d<21) {
				System.out.println("O signo � �ries");
			}else {
				System.out.println("O signo � Touro");
			}
			break;
		case 5:
			if(d<21) {
				System.out.println("O signo � Touro");
			}else {
				System.out.println("O signo � G�meos");
			}
			break;
		case 6:
			if(d<21) {
				System.out.println("O signo � G�meos");
			}else {
				System.out.println("O signo � C�ncer");
			}
			break;
		case 7:
			if(d<22) {
				System.out.println("O signo � C�ncer");
			}else {
				System.out.println("O signo � Le�o");
			}
			break;
		case 8:
			if(d<23) {
				System.out.println("O signo � Le�o");
			}else {
				System.out.println("O signo � Virgem");
			}
			break;
		case 9:
			if(d<23) {
				System.out.println("O signo � Virgem");
			}else {
				System.out.println("O signo � Libra");
			}
			break;
		case 10:
			if(d<22) {
				System.out.println("O signo � Libra");
			}else {
				System.out.println("O signo � Escorpi�o");
			}
			break;
		case 11:
			if(d<22) {
				System.out.println("O signo � Escorpi�o");
			}else {
				System.out.println("O signo � Sargit�rio");
			}
			break;
		case 12:
			if(d<22) {
				System.out.println("O signo � Sargit�rio");
			}else {
				System.out.println("O signo � Carpric�rnio");
			}
			break;
			default:
				System.out.println("A data insirida ou o M�s est� errado/inexistente");
		}
		leia.close();
	}

}
