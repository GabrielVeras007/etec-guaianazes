import java.util.Scanner;
public class Exercicio3 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i =1;
		String nm, nv="", nn="";
		int id, iv=Integer.MIN_VALUE, in=Integer.MAX_VALUE;
	
	
		while( i <=10) {
			
				System.out.println("Insira o Nome do "+i+" � Usu�rio");
				nm = leia.next();
				System.out.println("Insira a Idade do "+i+" � Usu�rio");
				id = leia.nextInt();
			
				if(id > iv) {
					iv = id;
					nv = nm;
				}else if(id < in){
					in = id;
					nn = nm;
				}
				
				i++;
			}
			System.out.println("O nome do Usu�rio mais velho � "+nv+" e sua idade � "+iv+"  anos");
			System.out.println("O nome do Usu�rio mais novo � "+nn+" e sua idade � "+in+"  anos");
			leia.close();
	}

}

