package exceptionTest;

public class Student {
	public void check1(int score) throws MyException1 {
		if (score < 0 || score > 100) {
			throw new MyException1("成绩必须在0~100之间");
		} else {
			System.out.println("输入成绩没问题");
		}
	}
	
	public void check2(int score){
		if (score < 0 || score > 100) {
			throw new MyException2("输入的成绩必须在0-100之间");
		} else {
			System.out.println("输入成绩没问题");
		}
	}
}
