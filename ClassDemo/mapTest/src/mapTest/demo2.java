package mapTest;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * @author liupuyan
 * ArrayList集合嵌套HashMap集合
 */
public class demo2 {
	public static void main(String[] args) {
		ArrayList<HashMap<String, String>> a1 = new  ArrayList<>();
		HashMap<String, String> hm1 = new HashMap<>();
		hm1.put("1001", "张三");
		hm1.put("1002", "李四");
		
		HashMap<String, String> hm2 = new HashMap<>();
		hm2.put("2001", "赵六");
		hm2.put("2002", "李四");
		
		HashMap<String, String> hm3 = new HashMap<>();
		hm3.put("3001", "张三");
		hm3.put("3002", "田七");
		
		a1.add(hm1);
		a1.add(hm2);
		a1.add(hm3);
		
		for(HashMap<String, String> hm: a1) {
			for(String key: hm.keySet()) {
				System.out.println(key + " " + hm.get(key));
			}
		}
	}
}
