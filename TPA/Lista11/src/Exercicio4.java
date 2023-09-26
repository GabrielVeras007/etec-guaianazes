import java.util.Scanner;
public class Exercicio4 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i = 1,ant = 0,atu = 1,n, prx;
		
		System.out.println("Insira o Enésimo Número:");
		n = leia.nextInt();
		while(i<n) {
			System.out.println(atu);
			prx = ant + atu;
			ant = atu;
			atu = prx;
			i++;
			
		}
		leia.close();
		}

}
