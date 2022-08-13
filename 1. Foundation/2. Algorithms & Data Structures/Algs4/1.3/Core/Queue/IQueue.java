package Core.Queue;

public interface IQueue<T> {
    public void enqueue(T item);

    public T dequeue();

    public int count();

    public boolean isEmpty();

    public int getCapacity();

}
