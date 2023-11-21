import java.util.Scanner;
import java.util.Random;
public class Exercicio4 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int cartela[][] = new int [4][4];
		int i , j, ri = 0;
		int rodadaVit = 0, numBingo;
		Random in = new Random();
		for(i=0; i<4; i++) {
			for(j=0; j<4; j++) {
				cartela[i][j] = in.nextInt(75) +1;
			}
		}
		do {
			System.out.println("Insira o O "+(ri + 1)+"º Número é: ");
			numBingo = leia.nextInt();
			ri++;
			
			for(i=0; i<4; i++) {
				for(j=0; j<4; j++) {
					if(numBingo == cartela[i][j]) {
						rodadaVit++;
					}
				}
			}
			
			
		}while(rodadaVit<16);
		
		System.out.println("BINGO!!!");
		System.out.println("Com "+ri+" Rodadas!");
		

	}

}
