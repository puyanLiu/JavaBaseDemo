package ioTest;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

/**
 * @author liupuyan
 * 将arrayList中的数据写入到文本中
 */
public class demo5 {
	public static void main(String[] args) throws IOException {
		ArrayList<String> al = new ArrayList<>();
		al.add("hello");
		al.add("world");
		al.add("java");
		
		BufferedWriter bw = new BufferedWriter(new FileWriter("fos2.txt"));
		for(String s: al) {
			bw.write(s);
			bw.newLine();
		}
		bw.flush();
		bw.close();
	}
}
