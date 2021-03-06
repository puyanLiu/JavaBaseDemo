package ioTest;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.Arrays;

/**
 * @author liupuyan
 * 计算机中 中文的存储分utf-8占三个字节 gbk占两个字节
 * 	第一个字节肯定是负数
 *  第二个字节常见是负数，也可能为正数
 *  
 *  window 默认编码一般 gbk 简体中文
 *  linux 默认编码一般 utf-8
 *  
 *  public String(byte bytes[], String charsetName) 通过指定的字符集解码字节数组
 *  public byte[] getBytes(String charsetName) 使用指定的字符集合把字符串编码为字节数组
 *  
 *  unicode 国际标准码
 *  utf-8 最多用三个字节（1~3）个字节
 */
public class demo3 {
	public static void main(String[] args) throws UnsupportedEncodingException {
		String str1 = "abcdef";
		byte[] by = str1.getBytes();
		for(byte b: by) {
			System.out.print(b + "\t");
		}
		System.out.println("-------------------");
		
		String str2 = "哈喽 你好";
//		byte[] by2 = str2.getBytes(); // [-27, -109, -120, -27, -106, -67, 32, -28, -67, -96, -27, -91, -67]
//		byte[] by2 = str2.getBytes(Charset.forName("gbk")); // [-71, -2, -32, -74, 32, -60, -29, -70, -61]
//		byte[] by2 = str2.getBytes(Charset.forName("utf-8")); // [-27, -109, -120, -27, -106, -67, 32, -28, -67, -96, -27, -91, -67]
//		byte[] by2 = str2.getBytes("GBK"); // [-71, -2, -32, -74, 32, -60, -29, -70, -61]
//		byte[] by2 = str2.getBytes("UTF-8"); // [-27, -109, -120, -27, -106, -67, 32, -28, -67, -96, -27, -91, -67]
		byte[] by2 = str2.getBytes("unicode"); // [-2, -1, 84, -56, 85, -67, 0, 32, 79, 96, 89, 125]
		System.out.println(Arrays.toString(by2));
		
		String str3 = new String(by2, "utf-8");
		String str4 = new String(by2, "gbk");
		String str5 = new String(by2, "unicode");
		System.out.println(str3);
		System.out.println(str4);
		System.out.println(str5);
		
	}
}
