package arrayListTest;

import java.util.ArrayList;

/**
 * @author liupuyan
 * 去除集合中自定义对象的重复值（对象的成员变量值都相同）
 */
public class demo5 {
	public static void main(String[] args) {
		ArrayList al1 = new ArrayList();
		Student s1 = new Student("张三", 19);
		Student s2 = new Student("李四", 18);
		Student s3 = new Student("王五", 32);
		Student s4 = new Student("张三", 19);
		Student s5 = new Student("李四", 20);
		Student s6 = new Student("钱七", 19);
		al1.add(s1);
		al1.add(s2);
		al1.add(s3);
		al1.add(s4);
		al1.add(s5);
		al1.add(s6);
		
		ArrayList al2 = new ArrayList();
		for (int i = 0; i < al1.size(); i++) {
			if (!al2.contains(al1.get(i))) {
				al2.add(al1.get(i));
			}
		}
		
		for (int i = 0; i < al2.size(); i++) {
			System.out.println(al2.get(i));
		}
	}
}
