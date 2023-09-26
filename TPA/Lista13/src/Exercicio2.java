import java.util.Scanner;
public class Exercicio2 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i, t, n;
		System.out.println("Insira o Número que deseja saber a Tabuada:");
		n = leia.nextInt();
		
		for(i=1;i<=10;i++) {
			t = n * i;
			System.out.println(n+ " x "+ i + " = " + t);
			
		}
		leia.close();
	}

}
