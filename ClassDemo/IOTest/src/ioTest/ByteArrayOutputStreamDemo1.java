package ioTest;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.CharArrayReader;
import java.io.IOException;
import java.io.StringReader;

/**
 * @author liupuyan
 * 内存操作流 用于处理临时存储信息的，程序结束，数据从内存中消失
 * 
 * 字节数组
 * 	ByteArrayInputStream
 * 	ByteArrayOutputStream
 * 
 * 字符数组
 * 	CharArrayReader
 * 	CharArrayWriter
 * 
 * 字符串
 * 	StringReader
 * 	StringWriter
 */
public class ByteArrayOutputStreamDemo1 {
	public static void main(String[] args) throws IOException {
		// 写数据
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		baos.write(97);
		baos.write("hello".getBytes());
		// close 可以不写 空实现
		baos.close();
		
		// 读数据
		ByteArrayInputStream bais = new ByteArrayInputStream(baos.toByteArray());
		int by = 0;
		while((by = bais.read()) != -1) {
			System.out.print((char)by);
		}
		bais.close();
	}
}
