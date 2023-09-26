
public class Exercicio4 {

	public static void main(String[] args) {
		int i, c, d;
		for(i=1;i<2023;i++) {
			System.out.println(i);
			c = i % 4;
			d = i % 100;
			if(c == 0 && d!=0) {
				System.out.println(i+"- Ano Bisexto");
			}
		}	

	}

}
