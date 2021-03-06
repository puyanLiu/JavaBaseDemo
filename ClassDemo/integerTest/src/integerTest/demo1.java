package integerTest;

public class demo1 {
	public static void main(String[] args) {
		// 十进制转二进制
		System.out.println(Integer.toBinaryString(100));
		// 十进制转八进制
		System.out.println(Integer.toOctalString(100));
		// 十进制转十六进制
		System.out.println(Integer.toHexString(100));
		// 最大值
		System.out.println(Integer.MAX_VALUE);
		// 最小值
		System.out.println(Integer.MIN_VALUE);
		
		Integer i1 = new Integer(100);
		System.out.println(i1);
		// 必须数组组成的字符串
		Integer i2 = new Integer("123");
		System.out.println(i2);
		
		// int类型和String类型相互转换
		// int->String
		int n1 = 100;
		String s1 = "" + n1;
		System.out.println(s1);
		String s2 = String.valueOf(n1);
		System.out.println(s2);
		Integer i3 =  new Integer(n1);
		String s3 = i3.toString();
		System.out.println(s3);
		String s4 = Integer.toString(n1);
		System.out.println(s4);
		// String->int
		String s5 = "123";
		Integer i4 = new Integer(s5);
		int n2 = i4.intValue();
		System.out.println(n2);
		int n3 = Integer.parseInt(s5);
		System.out.println(n3);
		
		// 十进制到其他进制
		System.out.println(Integer.toString(100, 10));
		System.out.println(Integer.toString(100, 2));
		System.out.println(Integer.toString(100, 8));
		System.out.println(Integer.toString(100, 16));
		System.out.println(Integer.toString(100, 5));
		System.out.println(Integer.toString(100, 7));
		System.out.println(Integer.toString(100, -7));
		System.out.println(Integer.toString(100, 70));
		System.out.println(Integer.toString(100, 36));
		System.out.println(Integer.toString(100, 37));
		
		// 其他进制到十进制
		System.out.println(Integer.parseInt("100", 10));
		System.out.println(Integer.parseInt("100", 2));
		System.out.println(Integer.parseInt("100", 8));
		System.out.println(Integer.parseInt("100", 16));
		System.out.println(Integer.parseInt("100", 23));
		// NumberFormatException
//		System.out.println(Integer.parseInt("123", 2));
		
		// 自动装箱：把基本类型转换为包装类类型
		// 自动拆箱：把包装类类型转换为基本类型
		Integer i5 = new Integer(100); // 装箱
		i5 += 200; // 先拆箱 再装箱
		System.out.println(i5);
		
		// Integer的数据直接赋值，如果在-128到127之间，会直接从缓冲池取数据
		Integer i6 = new Integer(127);
		Integer i7 = new Integer(127);
		System.out.println(i6 == i7);
		System.out.println(i6.equals(i7));
		Integer i8 = new Integer(128);
		Integer i9 = new Integer(128);
		System.out.println(i8 == i9);
		System.out.println(i8.equals(i9));
		Integer i10 = 128;
		Integer i11 = 128;
		System.out.println(i10 == i11);
		Integer i12 = 127;
		Integer i13 = 127;
		System.out.println(i12 == i13);
		
	}
}
