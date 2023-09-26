import java.util.Scanner;
public class Exercicio4 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		double p, m, c;
		String l;
		int i = 1;
		while(i>0) {
		System.out.println("Insira o Preço do Produto:");
		p = leia.nextDouble();
		System.out.println("Insira a o número da Porcentagem de Lucro Desejada:");
		m = leia.nextDouble();
		c = ((p / 100) * m + p);
		System.out.println("O Preço de Venda do Produto Somado com o Lucro é R$"+c);
		System.out.println("Deseja Continuar a Execução? (S/N).");
		l = leia.next();
		if(l.equalsIgnoreCase("S")) {
			i++;
		}else {
			i = i - i;
		}
		
		}
		leia.close();
		
	}

}
