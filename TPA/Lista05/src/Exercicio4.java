import java.util.Scanner;
public class Exercicio4 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		double a, b, c, delta, rdelta, r1, r2;
		System.out.println("Insira o valor de A:");
		a = leia.nextDouble();
		System.out.println("Insira o valor de B:");
		b = leia.nextDouble();
		System.out.println("Insira o valor de C:");
		c = leia.nextDouble();
		delta = b*b-4*a*c;
		rdelta = Math.sqrt(delta);
		r1 = (- b + rdelta)/ 2*a;
		r2 = (- b - rdelta)/ 2*a;
		if(delta<0) {
			System.out.println("Não existem Raizes Reais para a Equação");
		}else if (delta==0) {
			System.out.println("Existe apenas uma Raiz Real para a Equação "+"x1="+r1+" E "+"xII="+ r2);
		}else {
			System.out.println("Existem duas Raizes Reais para a Equação "+"xI="+r1+" E "+"xII="+r2);
		}
		leia.close();
	}

}
