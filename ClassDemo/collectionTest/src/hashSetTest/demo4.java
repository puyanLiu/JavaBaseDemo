package hashSetTest;

import java.util.HashSet;
import java.util.Random;

/**
 * @author liupuyan
 * 获取10个1-20的随机数，要求不能重复
 */
public class demo4 {
	public static void main(String[] args) {
		HashSet<Integer> hs1 = new HashSet<>();
		Random random = new Random();
		while (hs1.size() < 10) {
			int r = random.nextInt(20) + 1;
			hs1.add(r);
		}
		System.out.println(hs1);
	}
}
