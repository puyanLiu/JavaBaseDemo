package ioTest;

import java.io.FileReader;
import java.io.IOException;

/**
 * @author liupuyan
 * 用Reader模拟BufferedReader
 * readLine() 一次读取一行，根据换行符判断是否结束，只返回内容，不返回换行符
 */
public class MyBufferedReaderDemo1 {
	public static void main(String[] args) throws IOException {
		MyBufferedReader reader = new MyBufferedReader(new FileReader("fos3.txt"));
		String content = null;
		while ((content = reader.readLine()) != null) {
			System.out.println(content);
		}
		reader.close();
	}
}
