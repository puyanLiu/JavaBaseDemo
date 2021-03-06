package hashTableTest;

import java.util.HashMap;
import java.util.Hashtable;

/**
 * @author liupuyan
 * Hashtable
 * 	线程不安全，效率低 不允许null键和null值
 * HashMap
 * 	线程安全，效率高 允许null键和null值
 */
public class demo1 {
	public static void main(String[] args) {
		Hashtable<String, String> ht = new Hashtable<>();
		// NullPointerException
//		ht.put(null, "张三");
//		ht.put("1001", null);
		System.out.println(ht);
		
		HashMap<String, String> hm = new HashMap<>();
		hm.put(null, "张三");
		hm.put("1001", null);
		System.out.println(hm);
	}
}
