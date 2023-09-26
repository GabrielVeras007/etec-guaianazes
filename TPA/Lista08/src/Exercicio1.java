import java.util.Scanner;
public class Exercicio1 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i;
		System.out.println("Insira a idade do aluno:");
		i = leia.nextInt();
		
		switch(i) {
		case 6:
			System.out.println("Alunos de 6 anos são categoria “dente de leite”");
			break;
		case 7:
			System.out.println("Alunos de 7 anos são categoria “júnior”");
			break;
		case 8:
			System.out.println("Alunos de 8 anos são categoria “júnior max”");
			break;
		case 9:
			System.out.println("Alunos de 9 anos são categoria “júnior master”");
			break;
		case 10:
			System.out.println("Alunos de 10 anos são categoria “master”");
			break;
		default:
			System.out.println("A escola não admite alunos de outras idades, como  essa que você colocou.");
		}
		leia.close();
	}	

}
