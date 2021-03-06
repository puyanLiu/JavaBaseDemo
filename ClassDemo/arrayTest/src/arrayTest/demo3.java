package arrayTest;

/**
 * @author liupuyan
 * 二分查找
 */
public class demo3 {
	public static void main(String[] args) {
		int[] arr = {11, 22, 33, 44, 55, 66, 77, 88};
		int value = 33;
		int max = arr.length - 1;
		int min = 0;
		int mid = (max + min) / 2;
		while (arr[mid] != value) {
			if (arr[mid] < value) {
				min = mid + 1;
			} else {
				max = mid - 1;
			} 
			if (min > max) {
				System.out.println("未找到 -1");
				break;
			}
			mid = (max + min) / 2;
		}
		System.out.println(mid);
	}
}
