package collectionsTest;

import java.util.ArrayList;
import java.util.Collections;

/**
 * @author liupuyan
 * 模拟斗地主洗牌和发牌
 */
public class demo3 {
	public static void main(String[] args) {
		ArrayList<String> al = new ArrayList<>();
		String[] colors = {"♠️", "♥️", "♣️", "♦️"};
		String[] numbers = {"A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"};
		
		for(String c: colors) {
			for(String n: numbers) {
				al.add(c.concat(n));
			}
		}
		al.add("大王");
		al.add("小王");
		System.out.println(al);
		
		Collections.shuffle(al);
		System.out.println(al);
		
		ArrayList<String> person1 = new ArrayList<>();
		ArrayList<String> person2 = new ArrayList<>();
		ArrayList<String> person3 = new ArrayList<>();
		ArrayList<String> dipai = new ArrayList<>();
		
	
		for(int i =0; i < al.size(); i++) {
			if (i >= al.size() - 3) {
				dipai.add(al.get(i));
			} else if (i % 3 == 0) {
				person1.add(al.get(i));
			} else if (i % 3 == 1) {
				person2.add(al.get(i));
			} else if (i % 3 == 2) {
				person3.add(al.get(i));
			}
		}
		
		System.out.println(person1);
		System.out.println(person2);
		System.out.println(person3);
		System.out.println(dipai);
	}
}
