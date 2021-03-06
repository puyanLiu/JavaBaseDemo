package ioTest;

import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;

/**
 * @author liupuyan
 * 合并流
 * 把多个输入流的数据写到一个输出流中
 */
public class SequenceInputStreamDemo1 {
	public static void main(String[] args) throws IOException {
		InputStream s1 = new FileInputStream("fos.txt");
		InputStream s2 = new FileInputStream("fos3.txt");
		SequenceInputStream sis = new SequenceInputStream(s1, s2);
		BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream("fos2.txt"));
		
		byte[] bys = new byte[1024];
		int len = 0;
		while ((len = sis.read(bys)) != -1) {
			bos.write(bys, 0, len);
		}
		
		sis.close();
		bos.close();
	}
}
