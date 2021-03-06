package stringTest;

public class demo1 {
	public static void main(String[] args) {
		String s1 = new String();
		System.out.println(s1 + " " + s1.length());
		
		// 字节转数组
		byte[] b = {97, 98, 99, 100, 101};
		String s2 = new String(b);
		System.out.println(s2 + " " + s2.length());
		
		// 把字节数组的一部分转成字符串
		String s3 = new String(b, 1, 3);
		System.out.println(s3 + " " + s3.length());
		
		// 字符数组转成字符串
		char[] c = {'a', 'b', 'c', 'd', 'e'};
		String s4 = new String(c);
		System.out.println(s4 + " " + s4.length());
		
		// 字符数组的一部分转成字符串
		String s5 = new String(c, 2, 3);
		System.out.println(s5 + " " + s5.length());
		
		// 字符串常量值转成字符串
		String s6 = new String("abc");
		
		// 字面值
		String s7 = "abc";		
		
		System.out.println(s6 == s7);
		System.out.println(s6.equals(s7));
		
		// 字符串内容为空
		String s8 = "";
		// 判断字符串是否为空
		System.out.println(s8.isEmpty());
		
		// 字符串对象为空
		String s9 = null;
		// java.lang.NullPointerException 对象不存在，所以不能调用此方法，空指针异常
//		System.out.println(s9.isEmpty());
		
		String s10 = "helloworld";
		// 获取指定索引位置的字符
		System.out.println(s10.charAt(7));
		// 返回指定字符在此字符串中第一次出现的索引
		System.out.println(s10.indexOf('l'));
		// 返回指定字符串在此字符串中第一次出现的索引
		System.out.println(s10.indexOf("llo"));
		// 返回指定字符在此字符串中从指定位置后第一次出现的索引
		System.out.println(s10.indexOf('l', 4));
		System.out.println(s10.indexOf('l', 9));
		// 从指定位置开始截取字符串，默认到末尾
		System.out.println(s10.substring(5));
		System.out.println(s10.substring(0));
		// 从指定位置开始到指定位置结束截取字符串
		System.out.println(s10.substring(3, 5));
		System.out.println(s10.substring(0, s10.length()));
		
		// 遍历获取字符串中每个字符
		for(int i = 0; i < s10.length(); i++) {
			System.out.println(s10.charAt(i));
		}
	}
}
