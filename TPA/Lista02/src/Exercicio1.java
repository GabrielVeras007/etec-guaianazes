import java.util.Scanner;
public class Exercicio1 {
	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		Double preco, lucro, venda;
		System.out.println("Insira o pre�o do produto:");
		preco = leia.nextDouble();
		System.out.println("Insira a porcentagem de lucro :");
		lucro = leia.nextDouble();
		venda = ((preco/100)*lucro+preco);
		System.out.println("O pre�o da venda do produto � "+venda);
	}
}