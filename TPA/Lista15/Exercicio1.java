import java.util.Scanner;
public class Exercicio1 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i, l,  pr = 0, se = 0, te = 0, qu = 0, qui = 0, cp, cs, ct, cq, cqu;
		
		for(i=1;i<=15;i++) {
			System.out.println("Insira a Idade do "+i+" º Usuário:");
			l = leia.nextInt();
			
			if(l<=15) {
				pr  = pr + 1;
			}else if(l<=30 && l>16) {
				se = se + 1;
			}else if(l<=45 && l>31) {
				te = te + 1;
			}else if(l<=60 && l>46) {
				qu = qu + 1;
			}else {
				qui = qui + 1;
			}
		}
		cp = (pr * 100) / 15;
		cs = (se * 100) / 15;
		ct = (te * 100) / 15;
		cq = (qu * 100) / 15;
		cqu = (qui * 100) / 15;
		
		
		System.out.println("A quantidade de pessoas na 1º Faixa Etária são "+pr+" e suas Porcentagens são "+cp+"%");
		System.out.println("A quantidade de pessoas na 2º Faixa Etária são "+se+" e suas Porcentagens são "+cs+"%");
		System.out.println("A quantidade de pessoas na 3º Faixa Etária são "+te+" e suas Porcentagens são "+ct+"%");
		System.out.println("A quantidade de pessoas na 4º Faixa Etária são "+qu+" e suas Porcentagens são "+cq+"%");
		System.out.println("A quantidade de pessoas na 5º Faixa Etária são "+qui+" e suas Porcentagens são "+cqu+"%");
		
		leia.close();
		
	}

}
