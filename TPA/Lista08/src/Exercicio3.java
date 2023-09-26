import java.util.Scanner;
public class Exercicio3 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int mb, b, r, i, c, cn;
		String n;
		System.out.println("Insira a quantidade de alunos com MB:");
		mb = leia.nextInt();
		System.out.println("Insira a quantidade de alunos com B:");
		b = leia.nextInt();
		System.out.println("Insira a quantidade de alunos com R:");
		r = leia.nextInt();
		System.out.println("Insira a quantidade de alunos com I:");
		i = leia.nextInt();
		c = mb + b + r + i;
		System.out.println("A quantidade total de alunos é "+c);
		System.out.println("Insira a nota que deseja saber a porcentagem:");
		n = leia.next();
		
		switch (n) {
		case "MB":
		case "mb":
		case "Mb":
		case "mB":
			cn = mb* 100/c;
			System.out.println("A porcetagem de Alunos que tirou MB foi: "+cn+"%");
			break;
		case "B":
		case "b":
			cn = b * 100/c;
			System.out.println("A porcetagem de Alunos que tirou B foi: "+cn+"%");
			break;
		case "R":
		case "r":
			cn = r * 100/c;
			System.out.println("A porcetagem de Alunos que tirou R foi: "+cn+"%");
			break;
		case "I":
		case "i":
			cn = i * 100/c;
			System.out.println("A porcetagem de Alunos que tirou I foi: "+cn+"%");
			break;
			default:
				System.out.println("A nota que deseja saber não é Valida/Inexistente");
			
		}
		leia.close();
		

	}

}
