package exceptionTest;

public class demo2 {
	public static void main(String[] args) {
		method4();
	}

	// 两个异常 同时处理
	private static void method4() {
		int a = 10;
		int b = 0;
		int[] arr = { 1, 2, 3 };

		try {
			// java.lang.ArithmeticException
			System.out.println(a / b);

			// java.lang.ArrayIndexOutOfBoundsException
			System.out.println(arr[3]);
		} catch (ArithmeticException | ArrayIndexOutOfBoundsException e) { // 多个异常必须是平行关系
			System.out.println("出现异常啦");
		} catch (Exception e) {
			System.out.println(e);
		}
		System.out.println("end");
	}

	// 两个异常 同时处理
	private static void method3() {
		int a = 10;
		int b = 0;
		int[] arr = { 1, 2, 3 };

		try {
			// java.lang.ArithmeticException
			System.out.println(a / b);

			// java.lang.ArrayIndexOutOfBoundsException
			System.out.println(arr[3]);
		} catch (ArithmeticException e) {
			System.out.println("除数不能为0");
		} catch (ArrayIndexOutOfBoundsException e) {
			System.out.println("数组索引不能越界");
		} catch (Exception e) {
			System.out.println(e);
		}
		System.out.println("end");
	}

	// 两个异常
	private static void method2() {
		int a = 10;
		int b = 0;
		try {
			// java.lang.ArithmeticException
			System.out.println(a / b);
		} catch (ArithmeticException e) {
			System.out.println("除数不能为0");
		}

		int[] arr = { 1, 2, 3 };
		try {
			// java.lang.ArrayIndexOutOfBoundsException
			System.out.println(arr[3]);
		} catch (ArrayIndexOutOfBoundsException e) {
			System.out.println("数组索引不能越界");
		}
		System.out.println("end");
	}

	// 一个异常
	private static void method1() {
		int a = 10;
		int b = 0;
		try {
			// java.lang.ArithmeticException
			System.out.println(a / b);
		} catch (ArithmeticException e) {
			System.out.println("除数不能为0");
		}
		System.out.println("end");
	}
}
