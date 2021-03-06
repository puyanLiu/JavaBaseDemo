package ioTest;

import java.io.FileInputStream;
import java.io.IOException;

/**
 * @author liupuyan
 * 字节输入流
 */
public class FileInputStreamDemo1 {
	public static void main(String[] args) throws IOException {
		FileInputStream fis = new FileInputStream("fos.txt");
		
//		int by = fis.read(); // -1表示读取到文件末尾了
//		System.out.println(by);
//		System.out.println((char)by);
		
		// 一次读取一个字节
//		int by = 0;
//		while((by = fis.read()) != -1) {
//			System.out.print((char)by);
//		}
		
		// 一次读取一个字节数组 返回值其实是实际读取的字节个数
//		byte[] b = new byte[5];
		byte[] b = new byte[1024];
		int len = 0;
//		System.out.println(fis.read(b));
		while ((len = fis.read(b)) != -1) {
			System.out.print(new String(b, 0, len));
		}
		
		fis.close();
	}
}
