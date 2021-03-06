package recursiveTest;

import java.util.Iterator;

/**
 * @author liupuyan
 * 递归：方法定义中调用方法本身的现象
 * 
 * 求阶乘
 */
public class demo1 {
	public static void main(String[] args) {
		 int num = 5;
		 int sum = 1;
		 for (int i = num; i > 0; i--) {
			sum *= i;
		 }
		 System.out.println(sum);
		 
		 System.out.println(method1(5));
	}

	private static int method1(int num) {
		if (num == 1) {
			return 1;
		}
		return num * method1(num - 1); 
	}
}
