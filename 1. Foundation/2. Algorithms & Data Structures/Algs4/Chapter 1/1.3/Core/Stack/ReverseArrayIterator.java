package Core.Stack;

import java.util.Iterator;

class ReverseArrayIterator<T> implements Iterator<T> {

    private Stack<T> fixedCapacityStack;
    private int i;

    ReverseArrayIterator(Stack<T> fixedCapacityStack) {
        this.fixedCapacityStack = fixedCapacityStack;
        i = fixedCapacityStack.Count() - 1;
    }

    @Override
    public boolean hasNext() {
        return i > -1;
    }

    @Override
    public T next() {
        return this.fixedCapacityStack.array[i--];
    }

}