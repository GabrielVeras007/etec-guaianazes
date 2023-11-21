import java.util.Random;
public class Exercicio2 {

	public static void main(String[] args) {
		int v[][] = new int[3][3];
		int i, j;
		Random in = new Random();
		for(i=0; i<3; i++) {
			for(j=0; j<3; j++) {
				v[i][j] = in.nextInt(100);
			}
		}
		
		int menorNum = v[0][0];
		int maiorNum = v[0][0];
		int lMaior = 0;
		int cMaior = 0;
		int lMenor = 0;
		int cMenor = 0;
		for(i=0;i<3;i++) {
			for(j=0;j<3;j++) {
				if(v[i][j] < menorNum) {
					menorNum = v[i][j];
					 lMaior = i;
					 cMaior = j;
				}
				if(v[i][j]> maiorNum) {
					maiorNum = v[i][j];
				    lMenor = i;
				    cMenor = j;
				}
			}
		}
		
				System.out.println("Maior valor: "+maiorNum+" na posição: ["+lMaior+"]"+"["+cMaior+"]");
				System.out.println("Menor valor: "+menorNum+" na posição: ["+lMenor+"]"+"["+cMenor+"]");
				
		
	}

}
