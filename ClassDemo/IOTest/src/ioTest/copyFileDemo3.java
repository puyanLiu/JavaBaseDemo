package ioTest;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/**
 * @author liupuyan 复制文本
 * 
 *  五种字符流
 */
public class copyFileDemo3 {
	public static void main(String[] args) throws IOException {
		String srcString = "fos.txt";
		String destString = "fos2.txt";
//		 metho1(srcString, destString);
//		 metho2(srcString, destString);
//		 metho3(srcString, destString);
//		 metho4(srcString, destString);
		 metho5(srcString, destString);
	}

	// 字符缓冲流一次读写一个字符串
	private static void metho5(String srcString, String destString) throws IOException {
		BufferedReader br = new BufferedReader(new FileReader(srcString));
		BufferedWriter bw = new BufferedWriter(new FileWriter(destString));

		// 一次读取一个字符串
		String line = null;
		while ((line = br.readLine()) != null) {
			bw.write(line);
			bw.newLine();
			bw.flush();
		}

		br.close();
		bw.close();
	}

	// 字符缓冲流一次读写一个字符数组
	private static void metho4(String srcString, String destString) throws IOException {
		BufferedReader br = new BufferedReader(new FileReader(srcString));
		BufferedWriter bw = new BufferedWriter(new FileWriter(destString));

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

	// 字符缓冲流一次读写一个字符
	private static void metho3(String srcString, String destString) throws IOException {
		BufferedReader br = new BufferedReader(new FileReader(srcString));
		BufferedWriter bw = new BufferedWriter(new FileWriter(destString));

		// 一次读取一个字符
		int b = 0;
		while ((b = br.read()) != -1) {
			bw.write(b);
		}

		br.close();
		bw.close();
	}

	// 基本字符流一次读写一个字符数组
	private static void metho2(String srcString, String destString) throws IOException {
		FileReader fr = new FileReader(srcString);
		FileWriter fw = new FileWriter(destString);

		// 一次读取一个字符数组
		char[] ch = new char[1024];
		int len = 0;
		while ((len = fr.read(ch)) != -1) {
			fw.write(ch, 0, len);
		}

		fr.close();
		fw.close();
	}

	// 基本字符流一次读写一个字符
	private static void metho1(String srcString, String destString) throws IOException {
		FileReader fr = new FileReader(srcString);
		FileWriter fw = new FileWriter(destString);

		// 一次读取一个字符
		int b = 0;
		while ((b = fr.read()) != -1) {
			fw.write(b);
		}

		fr.close();
		fw.close();
	}
}
