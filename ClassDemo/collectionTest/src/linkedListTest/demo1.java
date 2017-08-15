package linkedListTest;

import java.util.LinkedList;

public class demo1 {
	public static void main(String[] args) {
		LinkedList ll1 = new LinkedList();
		ll1.add("hello");
		ll1.add("world");
		ll1.add("java");
		for (int i = 0; i < ll1.size(); i++) {
			String string = (String)ll1.get(i);
			System.out.println(string);
		}
		
		System.out.println("--------------------");
		ll1.addFirst("first");
		System.out.println(ll1);
		
		ll1.addLast("last");
		System.out.println(ll1);
		
		System.out.println(ll1.getFirst());
		System.out.println(ll1.getLast());
		
		System.out.println(ll1.removeFirst());
		System.out.println(ll1.removeLast());
	}
}
