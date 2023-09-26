import java.util.Scanner;
public class Exercicio2 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i =1, n, tb;
		System.out.println("Insira o Número que deseja saber a Tabuada X"+i);
		n = leia.nextInt();
		while(i<=10) {
		tb = n * i;
		System.out.println(n+" x "+i+" = "+tb);
		i++;
		}
		leia.close();
	}

}
