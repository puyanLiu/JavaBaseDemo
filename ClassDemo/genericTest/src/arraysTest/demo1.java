package arraysTest;

import java.util.Arrays;
import java.util.List;

/**
 * @author liupuyan
 * Arrays.asList 把数组转结合
 * 注意：
 * 虽然可以把数组转成集合，但是集合的长度不能改变
 */
public class demo1 {
	public static void main(String[] args) {
		String[] strArr = {"hello", "world", "java"};
		List<String> l1 = Arrays.asList(strArr);
		System.out.println(l1);
		// UnsupportedOperationException
//		l1.add("hehe");
	}
}
