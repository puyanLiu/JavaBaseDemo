package mathTest;

import java.util.Scanner;

public class demo1 {
	public static void main(String[] args) {
		// 成员变量
		System.out.println(Math.PI); 
		System.out.println(Math.E);
		
		// 成员方法
		// 绝对值
		System.out.println(Math.abs(10));
		System.out.println(Math.abs(-10));
		
		// 向上取整
		System.out.println(Math.ceil(12.34));
		// 向下取整
		System.out.println(Math.floor(12.34));
		
		// 最大值
		System.out.println(Math.max(10, 20));
		
		// a的b次幂
		System.out.println(Math.pow(2, 3));
		
		// 随机数
		System.out.println(Math.random());
		
		// 四舍五入
		System.out.println(Math.round(12.34f));
		
		// 平方根
		System.out.println(Math.sqrt(4));
		
	}
}
