package ioTest;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * @author liupuyan
 * 复制大文件 
 * 
 * 四种字节流
 */
public class copyFileDemo4 {
	public static void main(String[] args) {
		long start  = System.currentTimeMillis();
//		method1();
//		method2();
//		method3();
		method4();
		long end = System.currentTimeMillis();
		System.out.println(end - start + "毫秒");
	}

	/**
	 * 高效字节流一次读写一个字节数组 106毫秒
	 */
	private static void method4() {
		BufferedInputStream bis = null;
		BufferedOutputStream bos = null;
		try {
			bis = new BufferedInputStream(new FileInputStream("eclipse.tar.gz"));
			bos = new BufferedOutputStream(new FileOutputStream("copy4eclipse.tar.gz"));
			byte[] b = new byte[8192];
			int len = 0;
			while ((len = bis.read(b)) != -1) {
				bos.write(b, 0, len);
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (bis != null) {
				try {
					bis.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (bos != null) {
				try {
					bos.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
	
	/**
	 * 高效字节流一次读写一个字节 1496毫秒
	 */
	private static void method3() {
		BufferedInputStream bis = null;
		BufferedOutputStream bos = null;
		try {
			bis = new BufferedInputStream(new FileInputStream("eclipse.tar.gz"));
			bos = new BufferedOutputStream(new FileOutputStream("copy3eclipse.tar.gz"));
			int b = 0;
			while ((b = bis.read()) != -1) {
				bos.write(b);
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (bis != null) {
				try {
					bis.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (bos != null) {
				try {
					bos.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
	
	/**
	 * 基本字节一次读写一个字节数组 129毫秒
	 */
	private static void method2() {
		FileInputStream fis = null;
		FileOutputStream fos = null;
		try {
			fis = new FileInputStream("eclipse.tar.gz");
			fos = new FileOutputStream("copy2eclipse.tar.gz");
			byte[] b = new byte[8192];
			int len = 0;
			while ((len = fis.read(b)) != -1) {
				fos.write(b, 0, len);
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
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
	
	/**
	 * 基本字节流一次读写一个字节 95271毫秒
	 */
	private static void method1() {
		FileInputStream fis = null;
		FileOutputStream fos = null;
		try {
			fis = new FileInputStream("eclipse.tar.gz");
			fos = new FileOutputStream("copy1eclipse.tar.gz");
			int b = 0;
			while ((b = fis.read()) != -1) {
				fos.write(b);
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
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
