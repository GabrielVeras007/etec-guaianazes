import java.util.Scanner;
public class Exercicio4 {
	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int valora, valorb, valorc, valord, valore, valorf, abcmedia, defmedia, somamedia;
		double mmedia;
		System.out.println("Insira o primeiro número da primeira média :");
		valora = leia.nextInt();
		System.out.println("Insira o segundo número da primeira média :");
		valorb = leia.nextInt();
		System.out.println("Insira o terceiro número da primeira média :");
		valorc = leia.nextInt();
		abcmedia = (valora+valorb+valorc)/3;
		System.out.println("Insira o primeiro número da segunda média :");
		valord = leia.nextInt();
		System.out.println("Insira o segundo número da segunda média :");
		valore = leia.nextInt();
		System.out.println("Insira o terceiro número da segunda média :");
		valorf = leia.nextInt();
		defmedia = (valord+valore+valorf)/3;
		somamedia = abcmedia+defmedia;
		mmedia = (double)(abcmedia+defmedia)/2;
		System.out.println("A média Aritmética dos números "+valora+","+valorb+" e "+valorc+" é "+abcmedia+" , e a média Aritmética dos números "+valord+","+valore+" e "+valorf+" é "+defmedia);
		System.out.print("A soma das médias são "+somamedia+" e a média das médias é "+mmedia);
	}
}
