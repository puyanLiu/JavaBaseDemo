package genericTest;

/**
 * @author liupuyan
 * 已经知道什么类型
 */
public class InterImpl1 implements Inter<String> {

	@Override
	public void show(String t) {
		System.out.println(t);
	}

}
