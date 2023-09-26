
public class Exercicio3 {

	public static void main(String[] args) {
		int i, c;
		for(i=1;i<101;i++) {
			System.out.println(i);
			c =  i % 10;
			if(c == 0) {
				System.out.println(i+" - Múltiplo de 10");
			}
		}

	}

}
