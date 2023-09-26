import java.util.Scanner;
public class Exercicio2 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i = 1 , n = 0, c = 1 ;
		System.out.println("Insira o Número Desejado:");
		n = leia.nextInt();
		while(i<=n) {
			c = c * i;
			i++;
		}
		System.out.println(c);
		leia.close();
	}

}
