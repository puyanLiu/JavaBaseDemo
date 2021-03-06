package fileTest;

import java.io.File;
import java.io.FileFilter;

/**
 * @author liupuyan
 * 判断Desktop目录下是否有.md的文件，如果有 输出
 */
public class demo3 {
	public static void main(String[] args) {
//		method1();
		method2();
	}

	// 通过文件过滤器判断
	private static void method2() {
		File f1 = new File("/Users/liupuyan/Desktop");
		File[] fileArray = f1.listFiles(new FileFilter() {
			
			@Override
			public boolean accept(File pathname) {
				if (pathname.isFile() && pathname.getName().endsWith(".md")) {
					return true;
				}
				return false;
			}
		});
		for(File f: fileArray) {
			System.out.println(f);
		}
	}

	private static void method1() {
		File f1 = new File("/Users/liupuyan/Desktop");
		File[] fileArray = f1.listFiles();
		for(File f: fileArray) {
			if (f.isFile() && f.getName().endsWith(".md")) {
				System.out.println(f);
			}
		}
	}
}
