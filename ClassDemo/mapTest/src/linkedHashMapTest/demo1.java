package linkedHashMapTest;

import java.util.LinkedHashMap;

/**
 * @author liupuyan
 * LinkedHashMap 是Map接口的哈希表和链表实现，具有可预知的迭代顺序
 * 由哈希表保证键的唯一性
 * 由链表保证有序性（存储和取出的顺序一致）
 */
public class demo1 {
	public static void main(String[] args) {
		LinkedHashMap<String, String> map = new LinkedHashMap<>();
		map.put("1001", "张三");
		map.put("1002", "李四");
		map.put("1003", "王五");
		System.out.println(map);
	}
}
