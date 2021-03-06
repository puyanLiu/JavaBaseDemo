package variableTest;

/**
 * @author liupuyan
 * 可变参数
 * 修饰符 返回值类型 方法名(数据类型... 变量名)
 */
public class demo1 {
	public static void main(String[] args) {
		sum(1, 2, 3);
		sum(1, 2);
		sum(1, 2, 3);
	}
	
	public static int sum(int... a) {
		int s = 0;
		for(int x: a) {
			s += x;
		}
		System.out.println(s);
		return s;
	}
}
