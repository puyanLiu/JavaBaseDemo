package regexTest;

/**
 * @author liupuyan
 * 替换功能
 */
public class demo6 {
	public static void main(String[] args) {
		String s = "hello123423232131212world2253243242424java";
		// 去除所有数字，用*替代
		String s1 = "*";
//		String regex = "\\d+";
		String regex = "\\d";
		String s2 = s.replaceAll(regex, s1);
		System.out.println(s2);
	}
}