package ioTest;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

/**
 * @author liupuyan
 * BufferedWriter 字符缓冲输出流
 * 将文本写入字符输出流，缓冲各个字符，从而提供单个字符、数组和字符串的高效写入
 * 可以指定缓冲区的大小，或者使用默认的，大多数情况下，默认值就足够大了
 */
public class BufferedWriterDemo1 {
	public static void main(String[] args) throws IOException {
		BufferedWriter bw = new BufferedWriter(new FileWriter("fos.txt", true));
		bw.write("嘿嘿");
		bw.flush();
		bw.close();
	}
}
