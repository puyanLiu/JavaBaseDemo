package ioTest;

import java.io.FileReader;
import java.io.IOException;

public class MyLineNumberReaderDemo1 {
	public static void main(String[] args) throws IOException {
		MyLineNumberReader lnr = new MyLineNumberReader(new FileReader("fos3.txt"));
		
		// 设置行号从10开始
//		lnr.setLineNumber(10);
		
		String line = null;
		while ((line = lnr.readLine()) != null) {
			System.out.println(lnr.getLineNumber() + ":" + line);
		}
		lnr.close();
	}
}
