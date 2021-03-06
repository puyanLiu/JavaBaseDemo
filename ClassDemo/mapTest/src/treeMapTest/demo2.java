package treeMapTest;

import java.util.Comparator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import hashMapTest.Student;

public class demo2 {
	public static void main(String[] args) {
		TreeMap<String, Student> map = new TreeMap<>();
		Student s1 = new Student("张三", 19);
		Student s2 = new Student("李四", 19);
		Student s3 = new Student("王五", 19);
		Student s4 = new Student("赵六", 19);
		map.put("1001", s1);
		map.put("1002", s2);
		map.put("1003", s3);
		map.put("1004", s4);
		Set<Map.Entry<String, Student>> set = map.entrySet();
		for(Map.Entry<String, Student> entry: set) {
			System.out.println(entry.getValue());
		}
		
		TreeMap<Student, String> map1 = new TreeMap<>(new Comparator<Student>() {

			@Override
			public int compare(Student o1, Student o2) {
				int num = o1.getAge() - o2.getAge();
				int num2 = num == 0 ? o1.getName().compareTo(o2.getName()) : num;
				return num2;
			}
		
		});
		Student s11 = new Student("张三", 19);
		Student s12 = new Student("李四", 18);
		Student s13 = new Student("王五", 19);
		Student s14 = new Student("赵六", 16);
		map1.put(s11, "1001");
		map1.put(s12, "1002");
		map1.put(s13, "1003");
		map1.put(s14, "1004");
		Set<Map.Entry<Student, String>> set1 = map1.entrySet();
		for(Map.Entry<Student, String> entry: set1) {
			System.out.println(entry.getValue());
		}
	}
}
