package ioTest;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * @author liupuyan
 * 数据操作流 操作基本类型数据的流
 * DataInputStream 数据输入流
 * DataOutputStream 数据输出流
 */
public class DataStreamDemo1 {
	public static void main(String[] args) throws IOException {
		write();
		read();
	}

	private static void read() throws IOException {
		DataInputStream dis = new DataInputStream(new FileInputStream("fos.txt"));
		System.out.println(dis.readByte());
		System.out.println(dis.readShort());
		System.out.println(dis.readInt());
		System.out.println(dis.readLong());
		System.out.println(dis.readFloat());
		System.out.println(dis.readDouble());
		System.out.println(dis.readChar());
		System.out.println(dis.readBoolean());
		dis.close();
	}

	private static void write() throws IOException {
		DataOutputStream dos = new DataOutputStream(new FileOutputStream("fos.txt"));
		dos.writeByte(10);
		dos.writeShort(100);
		dos.writeInt(1000);
		dos.writeLong(10000);
		dos.writeFloat(12.32f);
		dos.writeDouble(12.34);
		dos.writeChar('a');
		dos.writeBoolean(true);
		dos.close();
	}
}
