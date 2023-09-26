import java.util.Scanner;
public class Exercicio2 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int d,m;
		System.out.println("Insira o dia de seu nascimento:");
		d = leia.nextInt();
		System.out.println("Insira o número do mês do seu nascimento (1 a 12):");
		m = leia.nextInt();
		
		switch(m) {
		case 1:
			if(d<21) {
				System.out.println("O signo é Capricórnio");
			}else {
				System.out.println("O signo é Aquário");
			}
			break;
		case 2:
			if(d<19) {
				System.out.println("O signo é Aquário");
			}else {
				System.out.println("O signo é Peixes");
			}
			break;
		case 3:
			if(d<20) {
				System.out.println("O signo é Peixes");
			}else {
				System.out.println("O signo é Áries");
			}
			break;
		case 4:
			if(d<21) {
				System.out.println("O signo é Áries");
			}else {
				System.out.println("O signo é Touro");
			}
			break;
		case 5:
			if(d<21) {
				System.out.println("O signo é Touro");
			}else {
				System.out.println("O signo é Gêmeos");
			}
			break;
		case 6:
			if(d<21) {
				System.out.println("O signo é Gêmeos");
			}else {
				System.out.println("O signo é Câncer");
			}
			break;
		case 7:
			if(d<22) {
				System.out.println("O signo é Câncer");
			}else {
				System.out.println("O signo é Leão");
			}
			break;
		case 8:
			if(d<23) {
				System.out.println("O signo é Leão");
			}else {
				System.out.println("O signo é Virgem");
			}
			break;
		case 9:
			if(d<23) {
				System.out.println("O signo é Virgem");
			}else {
				System.out.println("O signo é Libra");
			}
			break;
		case 10:
			if(d<22) {
				System.out.println("O signo é Libra");
			}else {
				System.out.println("O signo é Escorpião");
			}
			break;
		case 11:
			if(d<22) {
				System.out.println("O signo é Escorpião");
			}else {
				System.out.println("O signo é Sargitário");
			}
			break;
		case 12:
			if(d<22) {
				System.out.println("O signo é Sargitário");
			}else {
				System.out.println("O signo é Carpricórnio");
			}
			break;
			default:
				System.out.println("A data insirida ou o Mês está errado/inexistente");
		}
		leia.close();
	}

}
