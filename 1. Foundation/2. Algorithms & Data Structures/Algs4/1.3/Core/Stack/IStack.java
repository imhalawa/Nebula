package Core.Stack;

public interface IStack<T> {
    /**
     * Insert an item to the top of the Stack
     * 
     * @param item
     */
    public void Push(T item);

    /**
     * Get the top-most item of the stack, removes it from the stack.
     * 
     * @return Item of type <T>
     */
    public T Pop();

    /**
     * Get the top-most item of the stack, without removing it from the stack.
     * 
     * @return item of type <T>
     */
    public T Peek();

    /**
     * Return the Count of items within the stack
     * 
     * @return a number represents the number of elements within the stack
     */
    public int Count();

    /**
     * Check whether the Stack is empty
     * 
     * @return true of it contains any items; false otherwise.
     */
    public boolean IsEmpty();

    /**
     * Get the allocated Size of the stack, regardless of contained items.
     * 
     * @return a number represents the allocated array size
     */
    public int Size();

}