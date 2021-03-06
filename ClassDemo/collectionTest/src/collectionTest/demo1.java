package collectionTest;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class demo1 {
	public static void main(String[] args) {
		Collection c = new ArrayList();
		c.add("hello");
		c.add("world");
		System.out.println(c);
		System.out.println(c.remove("hello"));
		System.out.println(c.contains("world"));
		System.out.println(c.contains("hello"));
		System.out.println(c.isEmpty());
		System.out.println(c.size());
		
		Collection c1 = new ArrayList();
		c1.add("abc1"); // Object obj = "hello" 向上转型
		c1.add("abc2");
		c1.add("abc3");
		
		Collection c2 = new ArrayList();
		c2.add("abc1");
		c2.add("abc2");
		c2.add("abc3");
		c2.add("abc4");
		
//		System.out.println(c1.addAll(c2));
//		System.out.println(c1);
//		System.out.println(c1.removeAll(c2)); // 只要有一个元素被移除了，就返回true
//		System.out.println(c1);
		
		// 判断集合中是否包含指定的集合元素 只有包含所有的元素 才返回true
		System.out.println(c1.containsAll(c2));
		
		// 两个集合交集 返回值表示c1是否发生过改变
		System.out.println(c1.retainAll(c2));
		System.out.println(c1);
		System.out.println(c2);
		
		// 集合遍历
		Object[] arr = c1.toArray();
		for (int i = 0; i < arr.length; i++) {
			// 向下转型
			String s = (String)arr[i];
			System.out.println(s + " " + s.length());
		}
		
		System.out.println("------------------------------");
		// 迭代器
		// 集合的专用遍历方式
		Iterator it = c1.iterator();
		while (it.hasNext()) {
			// 通过next获取元素
			String s = (String)it.next();
			System.out.println(s + " " + s.length());
		}
	}
}
