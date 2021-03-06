package ioTest;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/**
 * @author liupuyan
 * 复制
 * 字符缓冲流
 */
public class copyFileDemo2 {
	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new FileReader("fos.txt"));
		BufferedWriter bw = new BufferedWriter(new FileWriter("fos2.txt"));

		// 一次读取一个字符数组
		char[] ch = new char[1024];
		int len = 0;
		while ((len = br.read(ch)) != -1) {
			bw.write(ch, 0, len);
			bw.flush();
		}

		br.close();
		bw.close();
	}
}
