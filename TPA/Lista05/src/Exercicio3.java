import java.util.Scanner;
public class Exercicio3 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		double peso, altura, c;
		System.out.println("Insira seu Peso:");
		peso = leia.nextDouble();
		System.out.println("Insira sua Altura:");
		altura = leia.nextDouble();
		c = (int)peso / (altura * altura);
		if(c<18.5) {
			System.out.println("Seu IMC é "+c+" Excesso de Magreza");
		}else if(c>18.5 && c<25) {
				System.out.println("Seu IMC é "+c+" Peso Normal");
			}else if(c>25 && c<30) {
					System.out.println("Seu IMC é "+c+" Excesso de Peso");
				}else if(c>30 && c<35) {
						System.out.println("Seu IMC é "+c+" Obsidade Grau I");
					}else if(c>35 && c<40) {
							System.out.println("Seu IMC é "+c+" Obsidade Grau II");
						}else {
							System.out.println("Seu IMC é "+c+" Obsidade Grau III");
						}
		leia.close();
		}
	}

