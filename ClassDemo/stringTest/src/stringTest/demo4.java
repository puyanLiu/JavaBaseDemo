package stringTest;

/**
 * @author liupuyan
 *
 */
public class demo4 {
	/**
	 * @param args
	 * 把数组中的数据按照指定格式拼接成字符串
	 */
	public static void main(String[] args) {
		int[] arr = {1, 2, 3};
		String string = "";
		for(int i = 0; i < arr.length; i++) {
			if (i == 0) {
				string += "[";
			}
			if (i == arr.length - 1) {
				string += arr[i];
				string += "]";
			} else {
				string += arr[i] + ", ";
			}
		}
		System.out.println(string);
	}
}