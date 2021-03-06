package ioTest;

import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.util.Enumeration;
import java.util.Vector;

public class SequenceInputStreamDemo2 {
	public static void main(String[] args) throws IOException {
		InputStream s1 = new FileInputStream("fos.txt");
		InputStream s2 = new FileInputStream("fos3.txt");
		InputStream s3 = new FileInputStream("IO.txt");
		
		Vector<InputStream> v = new Vector<>(2);
		v.addElement(s1);
		v.addElement(s2);
		v.addElement(s3);
		Enumeration<? extends InputStream> e = v.elements();

		SequenceInputStream sis = new SequenceInputStream(e);
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
