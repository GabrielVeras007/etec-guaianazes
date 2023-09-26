import java.util.Scanner;
public class Exercicio3 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		double p, c,qb,cb,ca;
		String db, ma;
		System.out.println("Insira o Preço da Pasagem:");
		p = leia.nextDouble();
		System.out.println("Deseja despachar a Bagagem?(SIM ou NÃO)");
		db = leia.next();
		if(db.equalsIgnoreCase("SIM")) {
			System.out.println("Insira a Quantidade de Bagagem a ser Despachada:");
			qb = leia.nextDouble();
			cb = qb * 90 ;
		}else {
			cb = 0 ;
		}
		System.out.println("Deseja Marcar Assento?(SIM ou NÃO)");
		ma = leia.next();
		if(ma.equalsIgnoreCase("SIM")) {
			ca = 60 ;
	    }else {
	    	ca = 0;
	    }
		c = p + cb + ca;
		System.out.println("O Custo Total da Viagem é "+c);
		leia.close();
	}
}
