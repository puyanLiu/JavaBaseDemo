package forTest;

import java.util.ArrayList;
import java.util.Iterator;

public class demo2 {
	public static void main(String[] args) {
		ArrayList<Student> al1 = new ArrayList<>();
		Student s1 = new Student("张三", 20);
		Student s2 = new Student("李四", 19);
		Student s3 = new Student("王五", 22);
		Student s4 = new Student("赵六", 24);
		al1.add(s1);
		al1.add(s2);
		al1.add(s3);
		al1.add(s4);
		
		Iterator<Student> it = al1.iterator();
		while (it.hasNext()) {
			Student student = it.next();
			System.out.println(student);
		}
		
		System.out.println("----------------------------");
		
		for (int i = 0; i < al1.size(); i++) {
			Student student = al1.get(i);
			System.out.println(student);
		}
		
		System.out.println("----------------------------");
		
		for (Student s: al1) {
			System.out.println(s);
		}
	}
}
