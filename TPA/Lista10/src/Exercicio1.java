import java.util.Scanner;
public class Exercicio1 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i = 1;
		double s, d, c;
		
		while (i<=4) {
		System.out.println("Insira o Sal�rio do "+i+"�Funcion�rio:");
		s = leia.nextInt();
		if(s>=2000) {
		d = s/100 * 11;
		System.out.println("O desconto ser� R$"+d);
		c = s - d;
		System.out.println("O valor com o desconto � R$"+c);
		}else {
			d = s/100 * 8.5;
			System.out.println("O desconto ser� R$"+d);
			c = s - d;
			System.out.println("O valor com o desconto � R$"+c);
		}
		i++;
	  }
		leia.close();
	}

}
