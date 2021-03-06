package ioTest;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

/**
 * @author liupuyan
 * 序列化流
 * 	把对象按照流一样的方式存入文件文件或者在网络中传输
 * 	对象->流数据 ObjectOutputStream
 * 
 * 反序列化流
 * 	把文本文件中的流对象数据或者网络中的流对象数据还原成对象
 * 	流数据->对象 ObjectInputStream
 */
public class ObjectStreamDemo {
	public static void main(String[] args) throws IOException, ClassNotFoundException  {
		// 序列化 把对象写入文本文件
		
//		write();
		
		read();
	}

	private static void read() throws IOException, ClassNotFoundException  {
		ObjectInputStream ois = new ObjectInputStream(new FileInputStream("fos.txt"));
		Person p = (Person) ois.readObject();
		System.out.println(p);
		ois.close();
	}

	private static void write() throws IOException {
		ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream("fos.txt"));
		Person person = new Person("张三", 18);
		oos.writeObject(person);
		oos.close();
	}
}
