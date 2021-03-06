package recursiveTest;

import java.io.File;
import java.io.FileFilter;

/**
 * @author liupuyan
 * 输出目录下所有.java结尾的文件的绝对路径
 */
public class demo4 {
	public static void main(String[] args) {
		File f1 = new File("/Users/liupuyan/Desktop/fileDemo");
		getAllJavaFilePath1(f1);
		getAllJavaFilePath2(f1);
	}
	
	private static void getAllJavaFilePath2(File file) {
		File[] arr = file.listFiles(new FileFilter() {
			
			@Override
			public boolean accept(File pathname) {
				if ((pathname.isFile() && pathname.getName().endsWith(".java")) || pathname.isDirectory()) {
					return true;
				}
				return false;
			}
		});
		if (arr != null) {
			for(File f: arr) {
				if (f.isFile()) {
					System.out.println(f.getAbsolutePath());
				} else {
					getAllJavaFilePath2(f);
				}
			}
		}
	}

	private static void getAllJavaFilePath1(File file) {
		File[] arr = file.listFiles();
		if (arr != null) {
			for(File f: arr) {
				if (f.isFile()) {
					if (f.getName().endsWith(".java")) {
						System.out.println(f.getAbsolutePath());
					}
				} else {
					getAllJavaFilePath1(f);
				}
			}
		}
	}
}
