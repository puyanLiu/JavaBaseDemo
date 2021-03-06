package ioTest;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.LineNumberReader;

/**
 * @author liupuyan
 * LineNumberReader
 */
public class LineNumberReaderDemo1 {
	public static void main(String[] args) throws IOException {
		LineNumberReader lnr = new LineNumberReader(new FileReader("fos3.txt"));
		
		// 设置行号从10开始
		lnr.setLineNumber(10);
		
		String line = null;
		while ((line = lnr.readLine()) != null) {
			System.out.println(lnr.getLineNumber() + ":" + line);
		}
		lnr.close();
	}
}
