package arrayTest;

import java.util.Arrays;

public class demo4 {
	public static void main(String[] args) {
		int[] arr = {24, 90, 34, 23, 92};
		// 排序前
		System.out.println(Arrays.toString(arr));
		
		// 排序
		Arrays.sort(arr);
		System.out.println(Arrays.toString(arr));
		
		// 二分查找
		System.out.println(Arrays.binarySearch(arr, 34));
		System.out.println(Arrays.binarySearch(arr, 90));
		System.out.println(Arrays.binarySearch(arr, 100));
	}
}
