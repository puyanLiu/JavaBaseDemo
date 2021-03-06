package exceptionTest;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author liupuyan 
 * 	
 * 对于解决不了的问题，抛出
 * 格式 throws 异常类名 注意：这个格式必须跟在方法的括号后面
 * 编译期异常抛出，将来调用者必须处理 运行期异常抛出，将来调用者可以不用处理
 */
public class demo4 {
	public static void main(String[] args) {
		System.out.println("start");
//		try {
//			method1();
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
		
//		method1();
		
		
		try {
			method2();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("end");
	}

	// 运行期异常
	private static void method1() throws ArithmeticException {
		int a = 10;
		int b = 0;
		System.out.println(a / b);
	}

	// 编译器异常
	private static void method2() throws ParseException {
		String string = "2017-11-01";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = sdf.parse(string);
		System.out.println(date);
	}
}
