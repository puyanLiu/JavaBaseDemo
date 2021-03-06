package linkedListTest;

import java.util.LinkedList;
import java.util.NoSuchElementException;

public class MyStack<E> {
	private LinkedList list;
	
	public MyStack() {
		super();
		list = new LinkedList();
	}

	public boolean add(E e) {
        list.add(e);
        return true;
    }
	
	public E get() {
        return (E) list.removeLast();
    }
	
	public boolean isEmpty() {
		return list.isEmpty();
	}

	@Override
	public String toString() {
		return list.toString();
	}
	
}
