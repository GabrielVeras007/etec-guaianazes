import java.util.Scanner;
public class Exercicio5 {
	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i = 1, menor = 0, maior = 0, idade;
		
		while(i<11) {
			System.out.println("Insira a Idade do "+i+"� usu�rio:");
			idade = leia.nextInt();
			
			if(idade<18) {
				menor = menor + 1;
			}else {
				maior = maior + 1;
			}
			i++;
			
		}
			System.out.println("Menores de Idades s�o "+menor);
			System.out.println("Maiores de Idade s�o "+maior);
			leia.close();
		}
		
	}

