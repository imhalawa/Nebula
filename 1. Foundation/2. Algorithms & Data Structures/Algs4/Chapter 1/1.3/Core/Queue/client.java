package Core.Queue;

import edu.princeton.cs.algs4.StdOut;

public class client {
    public static void main(String[] args) {
		Queue resizingArrayQueueOfStrings = new Queue(3);

		resizingArrayQueueOfStrings.enqueue("1");
		resizingArrayQueueOfStrings.enqueue("2");
		resizingArrayQueueOfStrings.enqueue("3");
		resizingArrayQueueOfStrings.enqueue("Full");

		StdOut.println("Dequeue 1: " + resizingArrayQueueOfStrings.dequeue());
        StdOut.println("Expected: 1\n");

		resizingArrayQueueOfStrings.enqueue("4");
		StdOut.println("Dequeue 2: " + resizingArrayQueueOfStrings.dequeue());
        StdOut.println("Expected: 2");
	}

}
