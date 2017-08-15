package exceptionTest;

import java.util.Scanner;

/**
 * @author liupuyan
 * 自定义异常
 */
public class myExceptionDemo {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("请输入成绩");
		int score = scanner.nextInt();
		Student student = new Student();
		// 编译行异常
		try {
			student.check1(score);
		} catch (MyException1 e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// 运行时异常
		student.check2(score);
		
		System.out.println("end");
	}
}
