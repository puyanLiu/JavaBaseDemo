package arrayListTest;

import java.util.ArrayList;
import java.util.Iterator;

public class demo2 {
	public static void main(String[] args) {
		ArrayList al1 = new ArrayList();
		Student s1 = new Student("张三", 19);
		Student s2 = new Student("李四", 18);
		Student s3 = new Student("王五", 32);
		al1.add(s1);
		al1.add(s2);
		al1.add(s3);
		
		Iterator it1 = al1.iterator();
		while (it1.hasNext()) {
			Student student = (Student)it1.next();
			System.out.println(student);
		}
		
		System.out.println("-----------------------");
		
		for (int i = 0; i < al1.size(); i++) {
			Student student = (Student)al1.get(i);
			System.out.println(student);
		}
	}
}
