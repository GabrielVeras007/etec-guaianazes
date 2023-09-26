import java.util.Scanner;
public class Exercicio9 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		double salario,c;
		System.out.println("Insira o Salário:");
		salario = leia.nextDouble();
		if(salario<1434.59) {
			 System.out.println("Insento a Pagar o Imposto");
		}else if(salario>1434.60 && salario<2150.00) {
			c = salario*7.5/100 - 107.59 ;
			System.out.println("Alíquota de "+7.5+" Desconto de "+c+" R$");
		}else if(salario>2150.01 && salario<2886.70) { 
			c = salario*15.0/100 - 268.84 ;
			System.out.println("Alíquota de "+15.0+" Desconto de  "+c+" R$");
		}else if(salario>2886.71 && salario<3582.00) {
			c = salario*22.5/100 - 483.84 ;
			System.out.println("Alíquota de "+22.5+" Desconto de "+c+ " R$");
		}else {
			c = salario*27.5/100 - 662.94 ;
			System.out.println("Alíquota de "+27.5+" Desconto de "+c+" R$");
		}
		leia.close();
	}

}
