package collectionsTest;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class demo2 {
	public static void main(String[] args) {
		List<Student> l1 = new ArrayList<Student>();
		Student s1 = new Student("张三", 19);
		Student s2 = new Student("李四", 18);
		Student s3 = new Student("王五", 32);
		l1.add(s1);
		l1.add(s2);
		l1.add(s3);
		for(Student s: l1) {
			System.out.println(s);
		}
		
		System.out.println("-----------------------------");
		
		Collections.sort(l1);
		for(Student s: l1) {
			System.out.println(s);
		}

		System.out.println("-----------------------------");
		
		Collections.sort(l1, new Comparator<Student>() {

			@Override
			public int compare(Student o1, Student o2) {
				// 降序
				int num = o2.getAge() - o1.getAge();
				int num2 = num == 0 ? o1.getName().compareTo(o2.getName()) : num;
				return num2;
			}
		});
		for(Student s: l1) {
			System.out.println(s);
		}
	}
}
