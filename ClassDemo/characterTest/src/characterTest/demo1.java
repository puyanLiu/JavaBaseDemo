package characterTest;

/**
 * @author liupuyan
 * Character类在对象中包装一个基本类型char的值
 */
public class demo1 {
	public static void main(String[] args) {
		Character character = new Character('a');
		System.out.println(character);
		Character character2 = new Character((char)97);
		System.out.println(character2);
		
		// 判断给定的字符是否大写字符
		System.out.println(Character.isUpperCase('a'));
		
		// 判断给定的字符是否小写字符
		System.out.println(Character.isLowerCase('A'));
		
		// 判断给定的字符是否是数字字符
		System.out.println(Character.isDigit('9'));
		
		// 把给定的字符转换为大写字符
		System.out.println(Character.toUpperCase('a'));
		
		// 把给定的字符转换为小写字符
		System.out.println(Character.toLowerCase('A'));
		
	}
}
