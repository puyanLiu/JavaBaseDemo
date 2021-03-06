package ioTest;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * @author liupuyan
 * 字节输出流添加异常处理
 */
public class FileOutputStreamDemo2 {
	public static void main(String[] args) {
//		method1();
//		method2();
		method3();
	}

	private static void method3() {
		FileOutputStream fos2 = null;
		try {
			fos2 = new FileOutputStream("fos2.txt");
			fos2.write(97);
			fos2.write(57);
			byte[] b = {97, 98, 99, 100, 101};
			// 写入一个字节数组
			fos2.write(b);
			// 写入字节的一部分
			fos2.write(b, 0, 2);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (fos2 != null) {
				try {
					fos2.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}

	// 一起做异常处理
	private static void method2() {
		try {
			FileOutputStream fos2 = new FileOutputStream("fos2.txt");
			fos2.write(97);
			fos2.write(57);
			byte[] b = {97, 98, 99, 100, 101};
			// 写入一个字节数组
			fos2.write(b);
			// 写入字节的一部分
			fos2.write(b, 0, 2);
			fos2.close();
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// 分开做异常处理
	private static void method1() {
		FileOutputStream fos2 = null;
		try {
			fos2 = new FileOutputStream("fos2.txt");
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			fos2.write(97);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			fos2.write(57);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		byte[] b = {97, 98, 99, 100, 101};
		// 写入一个字节数组
		try {
			fos2.write(b);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 写入字节的一部分
		try {
			fos2.write(b, 0, 2);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			fos2.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
}
