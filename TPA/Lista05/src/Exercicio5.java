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
			System.out.println("As medidas n�o Formam um Tri�ngulo");
		}else { if(a==b && a==c) {
			System.out.println("Tri�ngulo Eq�il�tero");
		}else if(a==b && a!=c || a==c && a!=b) {
			System.out.println("Tri�ngulo Is�celes");
		}else {
			System.out.println("Tri�ngulo Escaleno");
		}
		leia.close();
		}
	}
}
