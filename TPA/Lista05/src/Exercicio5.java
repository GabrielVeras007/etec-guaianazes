import java.util.Scanner;
public class Exercicio5 {
 
	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		double a, b, c;
		System.out.println("Insira o valor A:");
		a = leia.nextDouble();
		System.out.println("Insira o Valor B:");
		b = leia.nextDouble();
		System.out.println("Insira o Valor C:");
		c = leia.nextDouble();
		if(a<b+c && b<a+c && c<b+a) {
			System.out.println("As medidas não Formam um Triângulo");
		}else { if(a==b && a==c) {
			System.out.println("Triângulo Eqüilátero");
		}else if(a==b && a!=c || a==c && a!=b) {
			System.out.println("Triângulo Isóceles");
		}else {
			System.out.println("Triângulo Escaleno");
		}
		leia.close();
		}
	}
}
