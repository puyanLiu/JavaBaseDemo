package exceptionTest;

/**
 * @author liupuyan
 * 运行期异常
 */
public class MyException2 extends RuntimeException {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public MyException2() {
        super();
    }
	
	public MyException2(String message) {
        super(message);
    }
}
