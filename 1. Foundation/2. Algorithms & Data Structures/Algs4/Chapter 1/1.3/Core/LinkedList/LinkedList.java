package Core.LinkedList;

public class LinkedList<T> {
    private Node<T> head;
    private int count;

    public LinkedList() {
        super();
        head = null;
        count = 0;
    }

    public void InsertAtBeginning(T data) {
        if (head == null) {
            head = new Node<T>(data);
        } else {

            Node<T> _new = new Node<T>(data);
            _new.setNext(head);
            head = _new;
        }
        count++;
    }

    public void RemoveFromTheBeginning() {
        head.setNext(head.getNext());
        count--;
    }

    public void InsertAtEnd(T data) {
        Node<T> node = new Node<T>(data);
        Node<T> traverse = head;
        while (traverse.getNext() != null) {
            traverse = traverse.getNext();
        }
        traverse.setNext(node);
        count++;
    }

    public void Remove(Node<T> node) {
        Node<T> traverse = getPreviousNode(node);
        if (traverse != null) {
            traverse.setNext(traverse.getNext().getNext());
        }
        count--;
    }

    public void InsertBefore(Node<T> node, T data) {
        Node<T> traverse = getPreviousNode(node);
        Node<T> newNode = new Node<T>(data);
        if (traverse != null) {
            newNode.setNext(traverse.getNext());
            traverse.setNext(newNode);
        }
        count++;
    }

    public void InsertAt(int pos, T data) {
        if (pos <= count) {
            Node<T> traverse = getPreviousNodeAt(pos);
            Node<T> newNode = new Node<T>(data);
            newNode.setNext(traverse.getNext());
            traverse.setNext(newNode);
        } else {
            InsertAtEnd(data);
        }
        count++;
    }

    private Node<T> getPreviousNode(Node<T> node) {
        Node<T> traverse = head;
        while (traverse.getNext() != node && traverse.getNext() != null) {
            traverse = traverse.getNext();
        }
        return traverse;
    }

    private Node<T> getPreviousNodeAt(int n) {
        Node<T> traverse = head;
        for (int i = 0; i < n - 1; i++) {
            traverse = traverse.getNext();
        }
        return traverse;
    }

    public Node<T> Find(T data) {
        Node<T> traverse = head;
        while (traverse.getData() != data && traverse.getNext() != null) {
            traverse = traverse.getNext();
        }

        return traverse;
    }
}
