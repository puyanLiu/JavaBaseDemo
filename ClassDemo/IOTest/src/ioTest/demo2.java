package ioTest;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * @author liupuyan
 * 复制大文件
 */
public class demo2 {
	public static void main(String[] args) {
		FileInputStream fis = null;
		FileOutputStream fos = null;
		try {
			fis = new FileInputStream("eclipse.tar.gz");
			fos = new FileOutputStream("copyEclipse.tar.gz");

			// 一个字节一个字节复制
//			int b = 0;
//			while ((b = fis.read()) != -1) {
//				fos.write(b);
//			}
			
			// 字节数组复制
			byte[] bs = new byte[1024];
			int len = 0;
			while ((len = fis.read(bs)) != -1) {
				fos.write(bs, 0, len);
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			System.out.println("复制完成");
			if (fis != null) {
				try {
					fis.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (fos != null) {
				try {
					fos.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		}
		
	}
}
