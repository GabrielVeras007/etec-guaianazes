import java.util.Scanner;
public class Exercico3 {

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
			
		}
	}

}
