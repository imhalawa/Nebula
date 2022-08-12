package TwoSum;

import java.util.Arrays;

import edu.princeton.cs.algs4.BinarySearch;
import edu.princeton.cs.algs4.In;
import edu.princeton.cs.algs4.Out;
import edu.princeton.cs.algs4.StdOut;

public class TwoSum {

    public static void main(String[] args) {
        int[] a = new In(args[0]).readAllInts();
        int result = EnhancedTwoSum(a);
        StdOut.print(result);
    }

    private static int TwoSum(int[] a) {
        int count = 0;

        for (int i = 0; i < a.length; i++) {
            for (int j = i + 1; j < a.length; j++) {
                if (a[i] + a[j] == 0) {
                    count++;
                }
            }
        }

        return count;
    }

    private static int EnhancedTwoSum(int[] a) {
        Arrays.sort(a);
        int N = a.length;
        int count = 0;
        for (int i = 0; i < N; i++) {
            if (BinarySearch.indexOf(a, -a[i]) > i) {
                count++;
            }
        }
        return count;
    }
}
