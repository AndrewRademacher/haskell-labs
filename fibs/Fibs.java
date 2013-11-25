
import java.math.BigInteger;

public class Fibs {

    public static void main(String[] args) {
        int n = Integer.parseInt(args[0]);
        BigInteger[] lst = getFibs(n);
        System.out.println(lst[lst.length - 1]);    
    }

    public static BigInteger[] getFibs(int n) {
        BigInteger[] fibs = new BigInteger[n + 1];
        fibs[0] = BigInteger.valueOf(1);
        fibs[1] = BigInteger.valueOf(1);
        for (int i = 2; i <= n; i++)
            fibs[i] = fibs[i - 1].add(fibs[i - 2]);
        
        return fibs;
    }
}
