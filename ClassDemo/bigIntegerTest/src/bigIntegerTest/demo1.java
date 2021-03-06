package bigIntegerTest;

import java.lang.reflect.Array;
import java.math.BigInteger;
import java.util.Arrays;

/**
 * @author liupuyan
 * BigInteger 可以让超过Integer范围内的数据进行运算
 */
public class demo1 {
	public static void main(String[] args) {
		Integer i1 = new Integer(100);
		System.out.println(i1);
		
		System.out.println(Integer.MAX_VALUE);
		
		// 超出范围
		Integer i2 = new Integer(Integer.MAX_VALUE + 1);
		// 表示不准确
		System.out.println(i2);
		// 编译错误
//		Integer i3 = new Integer(2147483648);
//		System.out.println(i3);
		
		// 通过大整数来创建对象
		BigInteger b1 = new BigInteger("2147483648");
		System.out.println(b1);
		
		BigInteger b2 = new BigInteger("101");
		BigInteger b3 = new BigInteger("50");
		System.out.println(b2.add(b3));
		System.out.println(b2.subtract(b3));
		System.out.println(b2.multiply(b3));
		System.out.println(b2.divide(b3));
		
		// 返回商和余数的数组
		BigInteger[] bs = b2.divideAndRemainder(b3);
		System.out.println(Arrays.toString(bs));
	}
}
