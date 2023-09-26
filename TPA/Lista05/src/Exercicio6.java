import java.util.Scanner;
public class Exercicio6 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int a, b, c;
		System.out.println("Insira o Valor A:");
		a = leia.nextInt();
		System.out.println("Insira o Valor B:");
		b = leia.nextInt();
		System.out.println("Insira o Valor C:");
		c = leia.nextInt();
		if(a<b && b<c) {
			System.out.println(a+","+b+","+c);
		}else if(b<a && a<c){
			System.out.println(b+","+a+","+c);
		}else if(c<b && b<a) {
			System.out.println(c+","+b+","+a);
		}else if (c<a && a<b){ 
			System.out.println(c+","+a+","+b);
		}else if(b<c && c<a) {
			System.out.println(b+","+c+","+a);
		}else {
			System.out.println(a+","+c+","+b);
		}
		leia.close();
	}
	 
}
