package stringBufferTest;

public class demo1 {
	public static void main(String[] args) {
		// 线程安全的可变字符串
		StringBuffer sb1 = new StringBuffer();
		System.out.println(sb1);
		System.out.println(sb1.capacity());
		System.out.println(sb1.length());
		
		// 指定容量的字符串缓冲区对象
		StringBuffer sb2 = new StringBuffer(50);
		System.out.println(sb2);
		System.out.println(sb2.capacity());
		System.out.println(sb2.length());
		
		// 指定字符串内容的字符串缓冲区对象
		StringBuffer sb3 = new StringBuffer("hello");
		System.out.println(sb3);
		System.out.println(sb3.capacity());
		System.out.println(sb3.length());
		
		// 添加到字符串缓冲区，返回字符串缓冲区本身
		StringBuffer sb4 = sb3.append("world");
		System.out.println(sb3);
		System.out.println(sb3 == sb4);
		
		// 添加
		sb3.append("你好").append("中国");
		System.out.println(sb3);
		
		// 插入
		sb3.insert(2, "随意添加的");
		System.out.println(sb3);
		
		// 删除
		sb3.delete(0, 2);
		System.out.println(sb3);
		sb3.deleteCharAt(0);
		System.out.println(sb3);
		sb3.deleteCharAt(sb3.indexOf("的"));
		System.out.println(sb3);
		
		// 替换
		sb3.replace(0, 2, "哈哈");
		System.out.println(sb3);
		
		// 翻转
		sb3.reverse();
		System.out.println(sb3);
		
		// 截取，返回值类型不是本身
		String s1 = sb3.substring(5);
		System.out.println(s1);
		System.out.println(sb3);
		String s2 = sb3.substring(0, 5);
		System.out.println(s2);
		
		// String和StringBuffer互转
		// String->StringBuffer
		String s3 = "hello";
		StringBuffer sb5 = new StringBuffer(s3);
		System.out.println(sb5);
		StringBuffer sb6 = new StringBuffer();
		sb6.append(s3);
		System.out.println(sb6);
		// StringBuffer->String
		StringBuffer sb7 = new StringBuffer("hello");
		String s4 = sb7.toString();
		System.out.println(s4);
	}
}
