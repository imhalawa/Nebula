package Core.LinkedList;

public class Node<T> {
    private Node<T> next;
    private T data;

    public Node(T data) {
        super();
        this.data = data;
    }

    public void setNext(Node<T> node) {
        this.next = node;
    }

    public Node<T> getNext() {
        return this.next;
    }

    public void setData(T data) {
        this.data = data;
    }

    public T getData() {
        return this.data;
    }
}
