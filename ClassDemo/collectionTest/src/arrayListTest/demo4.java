package arrayListTest;

import java.util.ArrayList;
import java.util.Iterator;

/**
 * @author liupuyan
 * 去除字符串中的重复值（字符串的内容相同）
 * 
 * 不新增集合方式
 */
public class demo4 {
	public static void main(String[] args) {
		ArrayList al1 = new ArrayList();
		al1.add("hello");
		al1.add("world");
		al1.add("java");
		al1.add("hello");
		al1.add("java");
		al1.add("hehe");
		
		for (int i = 0; i < al1.size() - 1; i++) {
			System.out.println("----------------------");
			for (int j = i + 1; j < al1.size(); j++) {
				if (al1.get(i).equals(al1.get(j))) {
					al1.remove(j);
				}
				System.out.println("-----------");
			}
		}
		
		System.out.println(al1);
	}
}
