package ioTest;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintStream;

/**
 * @author liupuyan
 * 标准输出流
 */
public class SystemOutDemo {
	public static void main(String[] args) throws IOException {
		// 打印字节流
		PrintStream ps = System.out;
		ps.println("哈哈");
		System.out.println("嘿嘿");
		System.out.print("哈哈");
		
		// 转换流
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(ps));
		bw.write("123哈哈");
		bw.newLine();
		bw.write("456");
		bw.close();
	}
}
