package ioTest;

import java.io.IOException;
import java.io.Reader;

public class MyBufferedReader {
	private Reader r;

	public MyBufferedReader(Reader in) {
		this.r = in;
	}

	public String readLine() throws IOException {
		int b = 0;
		// 字符串缓冲区对象
		StringBuilder sb = new StringBuilder();
		while ((b = r.read()) != -1) {
			if (b == '\r') {
				continue;
			}
			if (b == '\n') {
				return sb.toString();
			} else {
				sb.append((char) b);
			}
		}
		if (sb.length() > 0) {
			return sb.toString();
		}
		return null;
	}

	public void close() throws IOException {
		r.close();
	}
}
