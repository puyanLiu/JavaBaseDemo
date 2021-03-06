package objectTest;

public class StudentDemo {

	public static void main(String[] args) throws CloneNotSupportedException {
		Student s1 = new Student();
		// 哈希值的根据哈希算法计算出来的一个值，这个值和地址值有关，但不是实际地址值
		System.out.println(s1.hashCode());
		System.out.println(s1.getClass().getName());

		System.out.println(s1.toString());
		System.out.println(s1.getClass().getName() + "@" + Integer.toHexString(s1.hashCode()));
		System.out.println(s1);

		Student s0 = new Student("张三", 19);
		Student s2 = new Student("张三", 19);
		System.out.println(s0.equals(s2));
		
		System.out.println(s2);
		Student s3 = s2.clone();
		s3.setName("王五");
		System.out.println(s3);
	}

}