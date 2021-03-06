package collectionsTest;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * @author liupuyan
 * Collections 针对集合进行操作的工具类 都是静态方法
 */
public class demo1 {
	public static void main(String[] args) {
		List<Integer> l1 = new ArrayList<Integer>();
		l1.add(30);
		l1.add(20);
		l1.add(23);
		l1.add(34);
		l1.add(28);
		System.out.println(l1);
		Collections.sort(l1); // 默认情况下是自然排序
		System.out.println(l1);
		
		System.out.println(Collections.binarySearch(l1, 30)); // 二分查找
		System.out.println(Collections.binarySearch(l1, 22));
		
		System.out.println(Collections.max(l1));
		Collections.reverse(l1);
		System.out.println(l1);
		
		// 随机置换
		Collections.shuffle(l1);
		System.out.println(l1);
	}
}
