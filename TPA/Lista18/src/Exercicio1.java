
public class Exercicio1 {

	public static void main(String[] args) {
		
		int ant = 0;
		int v[][] = new int [4][4];
		int i, j;
		int num = 2;
		for(i=0; i<4; i++) {
			for(j = 0; j<4; j++) {
				v[i][j] = num;
				num = num * 2;
			}
		}
		
		
		
		for(i=0;i<4;i++) {
			for(j=0;j<4;j++) {
				System.out.print(v[i][j] + " ");
			}
			System.out.println();
		}
	}

}
