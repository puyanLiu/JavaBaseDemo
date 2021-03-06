package stringTest;

/**
 * @author liupuyan
 * 统计一个字符串中大写字母字符，小写字母字符，数组字符出现的次数
 */
public class demo2 {
	
	public static void main(String[] args) {
		String string = "Hello123World";
		int bigCharCount = 0;
		int smallCharCount = 0;
		int numCount = 0;
		for(int i = 0; i < string.length(); i++) {
			char ch = string.charAt(i);
			if (ch >= 'a' && ch <= 'z') {
				smallCharCount++;
			} else if (ch >= 'A' && ch <= 'Z') {
				bigCharCount++;
			} else if (ch >= '0' && ch <= '9')  {
				numCount++;
			}
		}
		System.out.println(bigCharCount);
		System.out.println(smallCharCount);
		System.out.println(numCount);
	}
}
