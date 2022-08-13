package Core.Stack;

import edu.princeton.cs.algs4.StdOut;

public class client {
    public static void main(String[] args) {
        Stack<String> stack = new Stack<String>(2);
        stack.Push("M");
        stack.Push("o");
        stack.Push("h");
        stack.Push("a");
        stack.Push("m");
        stack.Push("e");
        stack.Push("d");
        stack.Push("a");
        stack.Push("l");
        stack.Push("i");

        for (String item : stack) {
            StdOut.print(item);
        }

        stack.Pop();
        stack.Pop();
        stack.Pop();
        stack.Pop();
        stack.Pop();
        stack.Pop();
        stack.Pop();
        stack.Pop();
    }
}
