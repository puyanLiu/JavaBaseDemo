package exceptionTest;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author liupuyan
 * 编译期异常和运行期异常的区别
 * 编译期异常 Java程序必须显示处理，否则程序发生错误，无法通过编译
 * 运行期异常 无需显示处理，也可以和编译时异常一样处理
 */
public class demo3 {
	public static void main(String[] args) {
		int a = 10;
		int b = 0;
		if (b != 0) {
			System.out.println(a / b);
		}
		
		String string = "2014-11-=20";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date d = null ;
		try {
			d = sdf.parse(string);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace(); // 获取异常类名和异常信息，以及异常出现在程序中的位置 返回值void，把信息输出在控制台
//			System.out.println("日期解析出错");
//			System.out.println(e.getMessage()); // 异常的消息字符串 Unparseable date: "2014-11-=20"
//			System.out.println(e.toString()); // 返回异常的简单信息描述 java.text.ParseException: Unparseable date: "2014-11-=20"
		}
		System.out.println(d);
		
		System.out.println("end");
	}
}
