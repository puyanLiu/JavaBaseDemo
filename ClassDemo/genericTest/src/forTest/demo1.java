package forTest;

import java.util.ArrayList;
import java.util.Iterator;

/**
 * @author liupuyan
 * 增强for
 */
public class demo1 {
	public static void main(String[] args) {
		ArrayList<String> al1 = new ArrayList<>();
		al1.add("hello");
		al1.add("world");
		al1.add("java");
		
		Iterator<String> it1 = al1.iterator();
		while (it1.hasNext()) {
			String string = it1.next();
			System.out.println(string);
		}
		
		System.out.println("----------------------------");
		
		for (int i = 0; i < al1.size(); i++) {
			System.out.println(al1.get(i));
		}
		
		System.out.println("----------------------------");
		
		for (String string : al1) {
			System.out.println(string);
		}
	}
}
