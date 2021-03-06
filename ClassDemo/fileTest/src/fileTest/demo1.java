package fileTest;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author liupuyan
 * File 文件和目录路径名的抽象表示形式
 */
public class demo1 {
	public static void main(String[] args) throws IOException {
		File f1 = new File("/Users/liupuyan/Desktop/filetest.txt");
		System.out.println(f1);
	
		File f2 = new File("/Users/liupuyan/Desktop", "filetest.txt");
		System.out.println(f2);
		
		File f3 = new File(new File("/Users/liupuyan/Desktop"), "filetest.txt");
		System.out.println(f3);
		
		// 创建文件夹
		File f4 = new File("/Users/liupuyan/Desktop/fileDemo/haha");
		System.out.println(f4.mkdir());
		
		// 创建文件
		File f5 = new File(f4, "a.txt");
		System.out.println(f5.createNewFile());
		
		// 创建文件
		File f6 = new File("/Users/liupuyan/Desktop/fileDemo/lala/a.txt");
		// No such file or directory 要想在某个目录下创建文件，该目录必须存在
//		System.out.println(f6.createNewFile());
	
		// 创建目录
		File f7 = new File("/Users/liupuyan/Desktop/fileDemo/lala/haha");
//		System.out.println(f7.mkdir()); // 创建失败 一次只能创建一个文件夹
		System.out.println(f7.mkdirs()); // 创建目录
		
		File f8 = new File("/Users/liupuyan/Desktop/fileDemo/xixi/a.txt");
		System.out.println(f8.mkdirs()); // 只能创建目录 不能创建文件
		
		// 删除f1创建的文件
		System.out.println(f1.delete());
		
		// 删除f8创建的a.txt文件夹
		System.out.println(f8.delete());
		
		// 删除f4创建的文件夹
		System.out.println(f4.delete()); // 只有文件夹子目录为空，才能删除文件夹
		
		// 重命名
		// 路径相同，就是改名
		// 路径不同，就是改名并剪切
		File f9 = new File("/Users/liupuyan/Desktop/fileDemo/haha/a.txt");
//		System.out.println(f9.renameTo(new File("/Users/liupuyan/Desktop/fileDemo/haha/abc.txt")));
//		System.out.println(f9.renameTo(new File("/Users/liupuyan/Desktop/fileDemo/xixi/d.txt")));
		
		// 判断功能
		System.out.println(f9.isDirectory());
		System.out.println(f9.isFile());
		System.out.println(f9.exists());
		System.out.println(f9.canRead());
		System.out.println(f9.canWrite());
		System.out.println(f9.isHidden());
		
		File f10 = new File("demo");
		System.out.println(f10.mkdir());
		File f11 = new File("demo/a.txt");
		System.out.println(f11.createNewFile());
		// 获取绝对路径
		System.out.println(f11.getAbsolutePath());
		// 获取相对路径
		System.out.println(f11.getPath());
		// 获取文件名
		System.out.println(f11.getName());
		// 获取文件长度 字节数
		System.out.println(f11.length());
		// 获取最后修改时间
		System.out.println(f11.lastModified());
		Date date = new Date(f11.lastModified());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		System.out.println(sdf.format(date));
		
	}
}
