package Core.Stack;

import java.util.Iterator;

public class Stack<T> implements IStack<T>, Iterable<T> {

    private final int DEFAULT_CAPACITY = 16;

    T[] array;
    int pointer;

    public Stack() {
        super();
        this.array = (T[]) new Object[DEFAULT_CAPACITY];
        this.pointer = -1;
    }

    public Stack(int Capacity) {
        super();
        this.array = (T[]) new Object[Capacity];
        this.pointer = -1;
    }

    @Override
    public void Push(T item) {
        if (pointer == array.length - 1)
            array = Resize(array, array.length * 2, pointer);

        this.array[++pointer] = item;
    }

    @Override
    public T Pop() {
        T item = null;
        if (pointer > -1) {
            item = this.array[pointer--];
            this.array[pointer + 1] = null;
        }

        if (pointer == array.length / 4) {
            array = Resize(array, array.length / 2, pointer);
        }

        return item;
    }

    @Override
    public T Peek() {
        T item = null;
        if (pointer > -1) {
            item = this.array[pointer];
        }
        return item;
    }

    @Override
    public int Count() {
        return pointer + 1;
    }

    @Override
    public boolean IsEmpty() {
        return pointer == -1;
    }

    @Override
    public int Size() {
        return this.array.length;
    }

    private T[] Resize(T[] items, int capacity, int count) {
        T[] resized = (T[]) new Object[capacity];
        for (int i = 0; i <= count; i++) {
            resized[i] = items[i];
        }
        return resized;
    }

    @Override
    public Iterator<T> iterator() {
        return new ReverseArrayIterator<T>(this);
    }

}