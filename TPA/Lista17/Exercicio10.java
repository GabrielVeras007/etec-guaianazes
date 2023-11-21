import java.util.Scanner;

public class Exercicio10 {
    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);
        
        int i, a[], b[], c[], t = 0, in;
       
        
        a = new int[10];
        b = new int[10];
        c = new int[10]; 

        for (i = 0; i < a.length; i++) {
            System.out.println("Insira o " + (i + 1) + " º Elemento do Vetor A:");
            a[i] = leia.nextInt();
        }

        for (i = 0; i < b.length; i++) {
            System.out.println("Insira o " + (i + 1) + " º Elemento do Vetor B:");
            b[i] = leia.nextInt();
        }

        for (i = 0; i < a.length; i++) {
        	boolean e = false;
            for (int j = 0; j < b.length; j++) {
                if (a[i] == b[j]) {
                    e = true;
                    break;
                }
            }
            if (!e) {
                c[t] = a[i];
                t++;
            }
        }

        System.out.print("A - B[ ");
        for (in = 0; in < t; in++) {
            System.out.print(c[in] + " ");
        }System.out.print("]");
        leia.close();
    }
}
