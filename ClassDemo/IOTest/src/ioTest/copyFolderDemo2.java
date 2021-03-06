package ioTest;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * @author liupuyan
 * 复制指定文件夹下的文件
 * 并改后缀名
 * 
 * 指定.java文件
 * 后缀名改为.txt
 */
public class copyFolderDemo2 {
	public static void main(String[] args) throws IOException {
		File srcFolder = new File("/Users/liupuyan/Desktop/fileDemo/javaFile");
		File destFolder = new File("/Users/liupuyan/Desktop/fileDemo/javaFileCopy");
		
		if (!destFolder.exists()) {
			destFolder.mkdir();
		}
		
		File[] fileArray = srcFolder.listFiles(new FileFilter() {
			
			@Override
			public boolean accept(File pathname) {
				return pathname.isFile() && pathname.getName().endsWith(".java");
			}
		});
		if (fileArray != null) {
			for (File f: fileArray) {
				if (f.isFile()) {
					String destName = f.getName();
					copyFile(f, new File(destFolder, destName.substring(0, destName.indexOf(".java")).concat(".txt")));
				}
			}
		}
	}
	
	public static void copyFile(File srcFile, File destFile) throws IOException {
		BufferedInputStream bis = new BufferedInputStream(new FileInputStream(srcFile));
		BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(destFile));
		
		int b = 0;
		while ((b = bis.read()) != -1) {
			bos.write(b);
		}
		
		bis.close();
		bos.close();
	}
}
