package regexTest;

import java.util.Arrays;

/**
 * @author liupuyan
 * 分割功能
 */
public class demo4 {
	public static void main(String[] args) {
		// 分割字符串
		String s1 = "12-34-43-11-3";
		String regex1 = "-";
		String[] strArr1 = s1.split(regex1);
		System.out.println(Arrays.toString(strArr1));
		
		String s2 = "aa,bb,cc";
		String[] strArr2 = s2.split(",");
		System.out.println(Arrays.toString(strArr2));
		
		String s3 = "aa.bb.cc";
		String[] strArr3 = s3.split("\\.");
		System.out.println(Arrays.toString(strArr3));
		
		String s4 = "aa    bb       cc";
		String[] strArr4 = s4.split(" +");
		System.out.println(Arrays.toString(strArr4));
	}
}
