package treeMapTest;

import java.util.TreeMap;

/**
 * @author liupuyan
 * aabdfdscdfdfdsfdsfdsffdsfsd
 * 获取字符中每一个字母出现的次数
 */
public class demo3 {
	public static void main(String[] args) {
		String string = "aabdfdscdfdfdsfdsfdsffdsfsd";
		TreeMap<Character, Integer> tm = new TreeMap<>();
		char[] cs = string.toCharArray();
		for(char c: cs) {
			int value = 0;
			if (tm.get(c) != null) {
				value = tm.get(c);
			}
			value += 1;
			tm.put(c, value);
		}
		
		for(Character key: tm.keySet()) {
			System.out.print(key + "(" + tm.get(key) + ")");
		}
	}
}
