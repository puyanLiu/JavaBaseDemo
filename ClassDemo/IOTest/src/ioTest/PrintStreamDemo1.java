package ioTest;

import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;

/**
 * @author liupuyan
 * 打印流
 * 
 * PrintStream 字节打印流
 * PrintWriter 字符打印流
 * 
 * 只操作目的地，不操作数据源
 * 可以操作任意类型的数据
 * 如果启动了自动刷新，能够自动刷新
 * 
 */
public class PrintStreamDemo1 {
	public static void main(String[] args) throws IOException {
//		method1();
		method2();
	}

	private static void method2() throws IOException {
		// if true, the <tt>println</tt>, <tt>printf</tt>, or <tt>format</tt> methods will flush the output buffer
		PrintWriter pw = new PrintWriter(new FileWriter("fos.txt"), true);
		pw.write("hello");
		pw.write("world");
		pw.println();
		pw.println("java");
		pw.println(true);
		pw.close();
	}

	private static void method1() throws IOException {
		PrintWriter pw = new PrintWriter("fos.txt");
		pw.write("hello");
		pw.write("world");
		pw.close();
	}
}
