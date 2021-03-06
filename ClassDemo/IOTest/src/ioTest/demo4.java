package ioTest;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

/**
 * @author liupuyan
 * fos2中存储了很多名字 随机获取一个名字
 */
public class demo4 {
	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new FileReader("fos2.txt"));
		ArrayList<String> al = new ArrayList<>();
		String content = null;
		while ((content = br.readLine()) != null) {
			al.add(content);
		}
		br.close();
		Random r = new Random();
		int index = r.nextInt(al.size());
		System.out.println(al.get(index));
	}
}
