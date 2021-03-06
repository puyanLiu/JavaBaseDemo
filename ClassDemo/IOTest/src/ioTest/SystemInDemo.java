package ioTest;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Scanner;

/**
 * @author liupuyan
 * System.in 标准输入流 是从键盘获取数据的
 * 
 * 键盘录入数据：
 * 	main方法的args接收参数
 * 		public static void main(String[] args)
 * 	Scanner
 * 		Scanner scanner = new Scanner(System.in);
 * 	通过字符缓冲流包装标准输入流实现
 * 		BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
 * 	
 */
public class SystemInDemo {
	public static void main(String[] args) throws IOException {
		// 获取标准输入流
		InputStream is = System.in;
		// 一次读取一行
		// 字节流转换为字符流，然后通过字符缓冲流操作
		BufferedReader br = new BufferedReader(new InputStreamReader(is));
		System.out.println("请输入一个字符串");
		String line = br.readLine();
		System.out.println(line);
		System.out.println("输入一个整数");
		line = br.readLine();
		System.out.println(Integer.parseInt(line));
		br.close();
	}
}
