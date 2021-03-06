package bigDecimalTest;

import java.math.BigDecimal;

/**
 * @author liupuyan
 * BigDecimal 不可变的、任意精度的有效符号十进制数，可以解决数据丢失问题
 */
public class demo1 {
	public static void main(String[] args) {
		// 运算时float类型和double类型很容易丢失精度
		// 运算结果有小误差，因为float类型的数据存储和整数不一样导致的，它们大部分时候，都是带有有效数字位
		System.out.println(0.09 + 0.01);
		System.out.println(1.0 - 0.32);
		System.out.println(1.015 * 100);
		System.out.println(1.301 / 100);
		System.out.println(1.0 - 0.12);
		
		BigDecimal bd1 = new BigDecimal("0.09");
		BigDecimal bd2 = new BigDecimal("0.01");
		System.out.println(bd1.add(bd2));
		
		BigDecimal bd3 = new BigDecimal("1.0");
		BigDecimal bd4 = new BigDecimal("0.32");
		System.out.println(bd3.subtract(bd4));
		
		BigDecimal bd5 = new BigDecimal("1.015");
		BigDecimal bd6 = new BigDecimal("100");
		System.out.println(bd5.multiply(bd6));
		
		BigDecimal bd7 = new BigDecimal("1.301");
		BigDecimal bd8 = new BigDecimal("100"); 
		System.out.println(bd7.divide(bd8));
		System.out.println(bd7.divide(bd8, 3, BigDecimal.ROUND_HALF_UP));
		System.out.println(bd7.divide(bd8, 8, BigDecimal.ROUND_HALF_UP));
		
	}
}
