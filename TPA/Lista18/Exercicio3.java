import java.util.Scanner;
public class Exercicio3 {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		int v[][] = new int[3][4];
		int i, j;
		
		
		for(i=0; i<3; i++) {
			int soma = 0;
			for(j=0; j<3; j++) {
				System.out.print("Digite o numero para a posição (" + (i + 1) + ", " + (j + 1) + "): ");
				v[i][j] = in.nextInt();
				soma += v[i][j];
			}
			v[i][3] = soma;
		}
		
		for(i=0; i<3; i++) {
			for(j=0; j<4; j++) {
				System.out.print(v[i][j] + " ");
			}
			System.out.println();
		}
		in.close();
	}

}
