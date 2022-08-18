package Core.LinkedList;

public class client {

    public static void main(String[] args) {
        LinkedList<Integer> ll = new LinkedList<Integer>();

        ll.InsertAtBeginning(5);
        ll.InsertAtBeginning(4);
        ll.InsertAtBeginning(2);
        ll.InsertAtBeginning(1);

        ll.InsertAt(2, 3);

        Node<Integer> n = ll.Find(3);

        // ll.Remove(n);
        ll.InsertBefore(n, 11);
        ll.InsertAt(3, 10);
    }
}
