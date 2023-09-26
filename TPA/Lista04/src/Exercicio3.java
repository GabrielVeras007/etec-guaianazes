import java.util.Scanner;
public class Exercicio3 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		double t, c;
		System.out.println("Insira a Temperatura:");
		t = leia.nextInt();
		c = (int)(t-32)* 5/9;
		if(c<15) {
			System.out.println("A Temperatura convertida é "+c+" E considerada FRIO");
		} else {
			if(c<22) {
				System.out.println("A Temperatura convertida é "+c+" E considerada AMENO");
			} else {
				System.out.println("A Temperatura convertida é "+c+" E considerada CALOR");
			}
		}
		leia.close();
	}

}
