import java.util.Scanner;
public class Exercicio1 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int i, l,  pr = 0, se = 0, te = 0, qu = 0, qui = 0, cp, cs, ct, cq, cqu;
		
		for(i=1;i<=15;i++) {
			System.out.println("Insira a Idade do "+i+" � Usu�rio:");
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
		
		
		System.out.println("A quantidade de pessoas na 1� Faixa Et�ria s�o "+pr+" e suas Porcentagens s�o "+cp+"%");
		System.out.println("A quantidade de pessoas na 2� Faixa Et�ria s�o "+se+" e suas Porcentagens s�o "+cs+"%");
		System.out.println("A quantidade de pessoas na 3� Faixa Et�ria s�o "+te+" e suas Porcentagens s�o "+ct+"%");
		System.out.println("A quantidade de pessoas na 4� Faixa Et�ria s�o "+qu+" e suas Porcentagens s�o "+cq+"%");
		System.out.println("A quantidade de pessoas na 5� Faixa Et�ria s�o "+qui+" e suas Porcentagens s�o "+cqu+"%");
		
		leia.close();
		
	}

}
