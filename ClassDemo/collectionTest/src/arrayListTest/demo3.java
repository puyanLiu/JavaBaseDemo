package arrayListTest;

import java.util.ArrayList;

/**
 * @author liupuyan
 * 去除字符串中的重复值（字符串的内容相同）
 * 
 * 新增集合方式
 */
public class demo3 {
	public static void main(String[] args) {
		ArrayList al1 = new ArrayList();
		al1.add("hello");
		al1.add("world");
		al1.add("java");
		al1.add("hello");
		al1.add("java");
		
		ArrayList al2 = new ArrayList();
		for (int i = 0; i < al1.size(); i++) {
			if (!al2.contains(al1.get(i))) {
				al2.add(al1.get(i));
			}
		}
		
		System.out.println(al2);
	}
}
