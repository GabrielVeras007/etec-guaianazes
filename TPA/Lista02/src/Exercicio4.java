import java.util.Scanner;
public class Exercicio4 {
	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int valora, valorb, valorc, valord, valore, valorf, abcmedia, defmedia, somamedia;
		double mmedia;
		System.out.println("Insira o primeiro n�mero da primeira m�dia :");
		valora = leia.nextInt();
		System.out.println("Insira o segundo n�mero da primeira m�dia :");
		valorb = leia.nextInt();
		System.out.println("Insira o terceiro n�mero da primeira m�dia :");
		valorc = leia.nextInt();
		abcmedia = (valora+valorb+valorc)/3;
		System.out.println("Insira o primeiro n�mero da segunda m�dia :");
		valord = leia.nextInt();
		System.out.println("Insira o segundo n�mero da segunda m�dia :");
		valore = leia.nextInt();
		System.out.println("Insira o terceiro n�mero da segunda m�dia :");
		valorf = leia.nextInt();
		defmedia = (valord+valore+valorf)/3;
		somamedia = abcmedia+defmedia;
		mmedia = (double)(abcmedia+defmedia)/2;
		System.out.println("A m�dia Aritm�tica dos n�meros "+valora+","+valorb+" e "+valorc+" � "+abcmedia+" , e a m�dia Aritm�tica dos n�meros "+valord+","+valore+" e "+valorf+" � "+defmedia);
		System.out.print("A soma das m�dias s�o "+somamedia+" e a m�dia das m�dias � "+mmedia);
	}
}
