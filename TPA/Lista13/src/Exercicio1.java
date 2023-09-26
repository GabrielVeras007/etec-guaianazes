import java.util.Scanner;
public class Exercicio1 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		
		int i;
		double salario,c,d;
		
		for(i=1;i<=4;i++) {
			System.out.println("Insira o valor do Salário:");
			salario = leia.nextDouble();
			if(salario<2000) {
				 c = (8.5/100) * salario;
				 System.out.println("O desconto será de "+c+" R$");
				 d = salario - c;
				 System.out.println("Com o desconto o valor fica "+d+" R$");
			}else {
				c = (salario/100) * 11;
				System.out.println("O desconto será de "+c+" R$");
				d = salario - c;
				System.out.println("Com o desconto o valor fica "+d+" R$");
			}
		}
		leia.close();
	}

}
