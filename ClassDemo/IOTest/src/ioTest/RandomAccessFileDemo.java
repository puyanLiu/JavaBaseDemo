package ioTest;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/**
 * @author liupuyan 随机访问流
 * 
 *         可以按照文件指针的位置写数据和读数据
 * 
 *         RandomAccessFile类不属于流，是Object类的子类 它融合了InputStream和OutputStream
 *         支持对文件的随机访问和写入
 */
public class RandomAccessFileDemo {
	public static void main(String[] args) throws IOException {
		write();
		read();
	}

	private static void read() throws IOException {
		RandomAccessFile raf = new RandomAccessFile("fos.txt", "rw");
		System.out.println("当前文件的指针位置：" + raf.getFilePointer());
		System.out.println(raf.read());
		System.out.println("当前文件的指针位置：" + raf.getFilePointer());
		int i = raf.readInt();
		System.out.println("----------------" + i);
		System.out.println("当前文件的指针位置：" + raf.getFilePointer());
		System.out.println(raf.readLine());
		System.out.println("当前文件的指针位置：" + raf.getFilePointer());
		
		// 设置当前文件指针位置
		raf.seek(13);
		System.out.println("当前文件的指针位置：" + raf.getFilePointer());
		System.out.println((char)raf.read());
		
		raf.close();
	}

	private static void write() throws IOException {
		// 创建随机访问流对象
		RandomAccessFile raf = new RandomAccessFile("fos.txt", "rw");
		raf.write(100);
		raf.writeInt(10000);
		raf.close();
	}
}
