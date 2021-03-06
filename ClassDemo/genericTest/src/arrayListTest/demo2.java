package arrayListTest;

import java.util.ArrayList;
import java.util.Random;

/**
 * @author liupuyan
 * 获取10个1-20的之间的随机数，要求不能重复
 */
public class demo2 {
	public static void main(String[] args) {
		// 创建产生随机数的对象
		Random random = new Random();
		ArrayList<Integer> al1 = new ArrayList<>();
		while (al1.size() < 10) {
			int r = random.nextInt(20) + 1;
			if (!al1.contains(r)) {
				al1.add(r);
			}
		}
		
		System.out.println(al1);
	}
}
