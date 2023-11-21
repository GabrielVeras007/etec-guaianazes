import java.util.Scanner;
public class Exercicio14 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		
		int i, a[], b[], c[];
		
		a = new int [10];
		b = new int [10];
		c = new int [10];
		
		for(i=0; i<a.length; i++) {
			System.out.println("Insira o "+( i + 1)+"º Elemento de A:");
			a[i] = leia.nextInt();
		}
		
		for(i=0; i<b.length; i++) {
			System.out.println("Insira o "+( i + 1)+"º Elemento de B:");
			b[i] = leia.nextInt();
		}
		
		for(i=0; i<a.length; i++) {
			if(a[i] > b[i]) {
				c[i] = 1;
			}else if(a[i] == b[i]) {
				c[i] = 0;
			}else {
				c[i] = -1;
			}
		}
		
		System.out.print("valores de C: ");
		for(i=0; i<c.length; i++) {
			System.out.print(c[i]+" ");
		}
	}

}
