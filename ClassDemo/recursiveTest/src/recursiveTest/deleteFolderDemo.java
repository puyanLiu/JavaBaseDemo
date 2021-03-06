package recursiveTest;

import java.io.File;

/**
 * @author liupuyan
 * 递归删除文件目录
 */
public class deleteFolderDemo {
	public static void main(String[] args) {
		File f1 = new File("/Users/liupuyan/Desktop/fileDemo/demo");
		deleteFolder(f1);
	}

	private static void deleteFolder(File file) {
		File[] arr = file.listFiles();
		if (arr != null) {
			for(File f: file.listFiles()) {
				if (f.isFile()) {
					f.delete();
				} else {
					deleteFolder(f);
				}
			}
			file.delete();
		}
	}
	
	
}
