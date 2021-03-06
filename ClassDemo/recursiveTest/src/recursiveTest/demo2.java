package recursiveTest;

import java.util.Arrays;

/**
 * @author liupuyan
 * 
 * 1, 1, 2, 3, 5, 8...
 */
public class demo2 {
	public static void main(String[] args) {
		int num = 20;
		method1(num);
		System.out.println(method2(num));
		method3(num);
	}
	
	// 变量的变化
	private static void method3(int num) {
		int a = 1;
		int b = 1;
		for(int i = 0; i < 18; i++) {
			int temp = a;
			a = b;
			b = temp + b;
		}
		System.out.println(b);
	}

	private static int method2(int num) {
		if (num == 1 || num == 2) {
			return 1;
		} else {
			return method2(num - 1) + method2(num - 2);
		}
	}

	private static void method1(int num) {
		int[] arr = new int[20];
		for (int i = 0; i < arr.length; i++) {
			if (i == 0 || i == 1) {
				arr[i] = 1;
			} else {
				arr[i] = arr[i - 2] + arr[i - 1];
			}
		}
		System.out.println(Arrays.toString(arr));
		System.out.println(arr[19]);
	}
}
