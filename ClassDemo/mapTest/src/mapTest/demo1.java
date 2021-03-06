package mapTest;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * @author liupuyan
 * Map集合
 * 	将键映射到值的对象。一个映射不能包含重复的键，每个键最多只能映射到一个值
 */
public class demo1 {
	public static void main(String[] args) {
		Map<String, String> map = new HashMap<>();
		System.out.println(map.put("id", "1001"));
		System.out.println(map.put("name", "张三"));
		System.out.println(map);
		System.out.println(map.containsKey("id"));
		map.clear();
		System.out.println(map);
		map.put("age", "19");
		System.out.println(map.remove("age"));
		System.out.println(map.remove("name"));
		System.out.println(map.isEmpty());
		System.out.println(map.size());
		map.put("1001", "张三");
		map.put("1002", "李四");
		System.out.println(map.get("1001"));
		System.out.println(map.get("1006"));
		
		// map集合遍历
		Set<String> set = map.keySet();
		System.out.println(set);
		for(String s: set) {
			System.out.println(s + " " + map.get(s));
		}
		
		Collection<String> collection = map.values();
		System.out.println(collection);
		
		// 键值对对象找键和值
		Set<Map.Entry<String, String>> set2 = map.entrySet();
		for(Map.Entry<String, String> entry: set2) {
			System.out.println(entry + " " + entry.getKey() + " " + entry.getValue());
		}
	}
}
