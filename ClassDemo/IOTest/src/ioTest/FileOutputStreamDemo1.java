package ioTest;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * @author liupuyan
 * IO流的分类
 * 流向
 * 	输入流 读取数据
 * 	输出流 写出数据
 * 
 * 数据类型
 * 	字节流
 * 		字节输入流 InputStream
 * 		字节输出流 OutputStream
 * 	字符流
 * 		字符输入流 Reader
 * 		字符输出流 Write
 * 
 * 换行
 * window \r\n 
 * linux \n 
 * mac \r
 */
public class FileOutputStreamDemo1 {
	public static void main(String[] args) throws IOException {
		// 创建字节输出流对象
		FileOutputStream fos = new FileOutputStream("fos.txt");
		// 写入数据
		fos.write("hello, java".getBytes());
		// 写入换行 
		fos.write("\r".getBytes());
		fos.write("world\r".getBytes());
		// 释放资源
		// 关闭此文件输出流并释放与此流有关的所有系统资源
		// 让流对象变成垃圾，这样就可以被垃圾回收器回收了
		// 通知系统去释放跟该文件相关的资源
		fos.close();
		
		FileOutputStream fos2 = new FileOutputStream("fos2.txt");
		fos2.write(97);
		fos2.write(57);
		byte[] b = {97, 98, 99, 100, 101};
		// 写入一个字节数组
		fos2.write(b);
		// 写入字节的一部分
		fos2.write(b, 0, 2);
		fos2.close();
		
		// 追加写入数据
		FileOutputStream fos3 = new FileOutputStream("fos.txt", true);
		for (int i = 0; i < 10; i++) {
			fos3.write(("hello" + i + "\r").getBytes());
		}
		fos3.close();
		
		
	}
}
