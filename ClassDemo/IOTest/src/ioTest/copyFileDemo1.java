package ioTest;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

/**
 * @author liupuyan
 * 文件内容复制
 * 基本字符流
 */
public class copyFileDemo1 {
	public static void main(String[] args) throws IOException {
		InputStreamReader isr = new InputStreamReader(new FileInputStream("fos.txt"));
		OutputStreamWriter osw = new OutputStreamWriter(new FileOutputStream("fos2.txt"));
		
		// 一次读取一个字符
//		int b = 0;
//		while ((b = isr.read()) != -1) {
//			osw.write(b);
//		}
		
		// 一次读取一个字符数组
		char[] ch = new char[1024];
		int len = 0;
		while ((len = isr.read(ch)) != -1) {
			osw.write(ch, 0, len);
		}
		
		isr.close();
		osw.close();
	}
}
