package FasterThreeSum;

import java.util.Arrays;

import edu.princeton.cs.algs4.BinarySearch;
import edu.princeton.cs.algs4.In;
import edu.princeton.cs.algs4.StdOut;
import edu.princeton.cs.algs4.Stopwatch;

public class FasterThreeSum {
    public static void main(String[] args) {
        int[] a = new In(args[0]).readAllInts();

        Stopwatch watch = new Stopwatch();

        // int result = ThreeSumAlgorithm(a);
        int result = FasterThreeSumAlgorithm(a);

        double time = watch.elapsedTime();
        StdOut.printf("%f:%d", time, result);
    }

    private static int ThreeSumAlgorithm(int[] n) {
        int count = 0;
        int N = n.length;

        for (int i = 0; i < N; i++) {
            for (int j = i + 1; j < N; j++) {
                for (int k = j + 1; k < N; k++) {
                    if (n[i] + n[j] + n[k] == 0) {
                        count++;
                    }
                }
            }
        }

        return count;
    }

    private static int FasterThreeSumAlgorithm(int[] n) {
        int count = 0;
        int N = n.length;
        Arrays.sort(n);

        for (int i = 0; i < N; i++) {
            for (int j = i + 1; j < N; j++) {
                if (BinarySearch.indexOf(n, (-n[i] - n[j])) > j) {
                    count++;
                }
            }
        }

        return count;
    }
}
