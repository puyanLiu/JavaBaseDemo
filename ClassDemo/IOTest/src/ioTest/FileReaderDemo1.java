package ioTest;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/**
 * @author liupuyan
 * InputStreamReader 子类FileReader 不能指定编码
 * 
 * Reader
 * 	- InputStreamReader
 * 		- FileReader
 * 	- BufferedReader
 * 
 * Writer
 * 	- OutputStreamWriter
 * 		- FileWriter
 * 	- BufferedWriter
 */
public class FileReaderDemo1 {
	public static void main(String[] args) throws IOException {
		FileReader fr = new FileReader("fos.txt");
		FileWriter fw = new FileWriter("fos2.txt");
		
		// 一次读取一个字符
//		int b = 0;
//		while ((b = fr.read()) != -1) {
//			fw.write(b);
//		}
		
//		// 一次读取一个字符数组
		char[] ch = new char[1024];
		int len = 0;
		while ((len = fr.read(ch)) != -1) {
			fw.write(ch, 0, len);
		}
		
		fr.close();
		fw.close();
	}
}
