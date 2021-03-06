package ioTest;

import java.io.Serializable;

/**
 * @author liupuyan
 * NotSerializableException 未序列化异常
 * 如果一个可序列化的对象包含对某个不可序列化的对象的引用，那么整个序列化操作将会失败，并且会抛出一个NotSerializableException.
 * 非静态内部类拥有对外部类的所有成员的完全访问权限，包括实例字段和方法。为实现这一行为，非静态内部类存储着对外部类的实例的一个隐式引用。序列化时要求所有的成员变量是Serializable,现在外部的类并没有implements Serializable,所以就抛出java.io.NotSerializableException异常
 * 
 * 解决办法：
 * 1.将内部类写成静态的
 * 2.将内部类单独写一个.java文件 implements Serializable
 * 
 * 
 * InvalidClassException 
 * ioTest.Person; 
 * local class incompatible: 
 * stream classdesc serialVersionUID = 7223226600622404240, 
 * local class serialVersionUID = -5028856151643413320
 * 
 * 每次修改java文件的时候，class文件的id值都会发生改变
 * 而读取文件的时候，会和class文件中id值进行匹配
 * 
 * 使用transient关键字声明不需要序列化的成员变量
 */
public class Person implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5028856151643413320L;
	public String name;
	private transient int age;

	public Person(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return "Person [name=" + name + ", age=" + age + "]";
	}

}
