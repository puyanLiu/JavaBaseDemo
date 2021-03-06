package ioTest;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

/**
 * @author liupuyan
 * 把字节流转换为字符流
 * 字符流 = 字节流 + 编码表
 * 编码表：由字符和对应的数值组成的一张表
 * 
 * close() 关闭流对象，但是先刷新一次缓冲区。关闭之后，流对象不可以继续再使用了
 * flush() 仅仅刷新缓冲区，刷新之后，流对象还可以继续使用
 */
public class OutputStreamWriterDemo1 {
	public static void main(String[] args) throws IOException {
		// 默认编码
//		OutputStreamWriter osw = new OutputStreamWriter(new FileOutputStream("fos.txt", true));
		
		// 指定编码
		OutputStreamWriter osw = new OutputStreamWriter(new FileOutputStream("fos.txt", true), "utf-8");
//		OutputStreamWriter osw = new OutputStreamWriter(new FileOutputStream("fos.txt", true), "gbk");
		osw.write("\r");
		osw.write('a');
		osw.write(97);
		osw.write("嘿嘿嘿😀哈哈", 0, 4);
		char[] chs = {'a', 'b', 'c', 'd', 'e'};
		osw.write(chs, 0, 5);
		osw.write("哦哈哈");
		
		// 刷新缓冲区
		osw.flush();
		
		// 释放资源
		osw.close();
	}
}
