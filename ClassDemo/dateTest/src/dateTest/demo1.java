package dateTest;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author liupuyan
 * Date 特定的瞬间，精确到毫秒
 */
public class demo1 {
	public static void main(String[] args) throws ParseException {
		// 根据当前的默认毫秒值创建日期对象
		Date d1 = new Date();
		System.out.println(d1);
		
		// 根据给定的毫秒值创建日期对象
//		long time = System.currentTimeMillis();
//		long time = 1000 * 60 * 60;
		long time = 0;
		Date d2 = new Date(time); // Thu Jan 01 08:00:00 CST 1970 开始计算
		System.out.println(d2);
		
		// 获取时间
		System.out.println(d1.getTime());
		System.out.println(System.currentTimeMillis());
		// 设置时间
		d1.setTime(1000);
		System.out.println(d1);
		
		// Date -> String
		// DtateFormat 可以进行日期和字符串的格式化和解析
		// 使用子类SimpleDateFormat
		Date d3 = new Date();
		SimpleDateFormat sdf1 = new SimpleDateFormat(); // 17-7-31 下午12:29
		String s1 = sdf1.format(d3);
		System.out.println(s1);
		// 给定格式
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss"); // 2017年07月31日 12:30:45
		String s2 = sdf2.format(d3);
		System.out.println(s2);
		
		// String -> Date
		String s3 = "2017-07-3 12:30:45";
		// 把字符串解析为日期的时候，注意格式必须与给定的字符串格式匹配，格式错误ParseException
		SimpleDateFormat sdf3 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date d4 = sdf3.parse(s3);
		System.out.println(d4);
		
		String s4 = DateUtil.dateToString(d3, "yyyy-MM-dd");
		System.out.println(s4);
		Date d5 = DateUtil.stringToDate("2017-07-31", "yyyy-MM-dd");
		System.out.println(d5);
	}
}
