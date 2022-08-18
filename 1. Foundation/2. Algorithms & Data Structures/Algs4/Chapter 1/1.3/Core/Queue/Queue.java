package Core.Queue;

public class Queue<T> implements IQueue<T> {

    private static final int DEFAULT_CAPACITY = 16;
    private int head;
    private int tail;
    private int n;
    private T[] array;

    public Queue() {
        this(DEFAULT_CAPACITY);
    }

    public Queue(int Capacity) {
        super();
        this.array = (T[]) new Object[Capacity];
        this.head = 0;
        this.tail = 0;
    }

    @Override
    public void enqueue(T item) {

        if (n == array.length) {
            resize(array.length * 2);
        }

        if (tail == array.length) {
            tail = 0; // wrap up
        }

        this.array[tail++] = item;
        n++;
    }

    private void resize(int len) {
        T[] temp = (T[]) new Object[len];

        for (int i = 0; i < n; i++) {
            temp[i] = array[(head + i) % array.length];
        }

        array = temp;
        head = 0;
        tail = n;
    }

    @Override
    public T dequeue() {
        if (isEmpty()) {
            throw new RuntimeException("Queue underflow");
        }

        T item = array[head];
        array[head] = null;
        head++;
        n--;

        if (head == array.length) {
            head = 0;
        }

        if (n > 0 && n == array.length / 4) {
            resize(array.length / 2);
        }

        return item;
    }

    @Override
    public int count() {
        return n;
    }

    @Override
    public boolean isEmpty() {

        return false;
    }

    @Override
    public int getCapacity() {
        return array.length;
    }
}
