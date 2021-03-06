package mapTest;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * @author liupuyan
 * Hash集合嵌套ArrayList
 */
public class demo4 {
	public static void main(String[] args) {
		HashMap<String, ArrayList<String>> hm = new HashMap<>();
		
		ArrayList<String> a1 = new ArrayList<>();
		a1.add("张三");
		a1.add("李四");
		
		ArrayList<String> a2 = new ArrayList<>();
		a2.add("王五");
		a2.add("李四");
		
		hm.put("一班", a1);
		hm.put("二班", a2);
		
		for(String key: hm.keySet()) {
			System.out.println(key);
			for(String a: hm.get(key)) {
				System.out.println("\t" + a);
			}
		}
	}
}
