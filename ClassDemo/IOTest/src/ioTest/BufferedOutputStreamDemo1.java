package ioTest;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * @author liupuyan
 * 
 * BufferedOutputStream
 * 构造方法可以指定缓冲区的大小，一般不用，默认缓冲区大小就够了
 */
public class BufferedOutputStreamDemo1 {
	public static void main(String[] args) throws IOException {
		BufferedOutputStream  bos = new BufferedOutputStream(new FileOutputStream("fos.txt", true));
		bos.write("啦啦".getBytes());
		bos.close();
		
	}
}
