import java.util.Scanner;
public class Exercicio1 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i = 1, n, f = 1;
		
		System.out.println("Insira o Número que deseja Fatoriar:");
		n = leia.nextInt();
		do {
			f = f * i;
			i++;
		}while(i<=n);
		System.out.println(f);
		leia.close();
	}

}
