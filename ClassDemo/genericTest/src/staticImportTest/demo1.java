package staticImportTest;

import static java.lang.Math.abs;
import static java.lang.Math.pow;
import static java.lang.Math.max;

/**
 * @author liupuyan
 * 静态导入
 * import static 包名.类名.方法;
 * 
 * 注意：
 * 1、方法必须是静态的
 */
public class demo1 {
	public static void main(String[] args) {
		System.out.println(java.lang.Math.abs(-100));
		System.out.println(java.lang.Math.pow(2, 3));
		System.out.println(java.lang.Math.max(20, 30));
		
		System.out.println(Math.abs(-100));
		System.out.println(Math.pow(2, 3));
		System.out.println(Math.max(20, 30));
		
		System.out.println(abs(-100));
		System.out.println(pow(2, 3));
		System.out.println(max(20, 30));
	}
}
