package hashSetTest;

import java.util.HashSet;

public class demo2 {
	public static void main(String[] args) {
		HashSet<Student> hs1 = new HashSet<>();
		Student s1 = new Student("张三", 19);
		Student s2 = new Student("李四", 19);
		Student s3 = new Student("王五", 21);
		Student s4 = new Student("李四", 19);
		hs1.add(s1);
		hs1.add(s2);
		hs1.add(s3);
		hs1.add(s4);
		
		for(Student s: hs1) {
			System.out.println(s);
		}
	}
}
