package ioTest;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Comparator;
import java.util.Scanner;
import java.util.TreeSet;

/**
 * @author liupuyan
 * 键盘录入5个学生信息 姓名 语文成绩 数学成绩 英语成绩 按照总分从高到底存入文本文件
 */
public class StudentDemo1 {
	public static void main(String[] args) throws IOException {
		// 比较器排序
				TreeSet<Student> ts1 = new TreeSet<>(new Comparator<Student>() {

					@Override
					public int compare(Student o1, Student o2) {
						int num = o2.getSum() - o1.getSum();
						int num2 = num == 0 ? o1.getChinese() - o2.getChinese() : num;
						int num3 = num2 == 0 ? o1.getMath() - o2.getMath() : num2;
						int num4 = num3 == 0 ? o1.getEnglish() - o2.getEnglish() : num3;
						int num5 = num4 == 0 ? o1.getName().compareTo(o2.getName()) : num4;
						return num5;
					}
				
				});
		Scanner sc = new Scanner(System.in);
		for (int i = 0; i < 5; i++) {
			Student s = new Student();
			System.out.println("请输入" + i + "姓名");
			String name = sc.nextLine();
			System.out.println("请输入" + i + "语文成绩");
			String chinese = sc.nextLine();
			System.out.println("请输入" + i + "数学成绩");
			String math = sc.nextLine();
			System.out.println("请输入" + i + "英语成绩");
			String english = sc.nextLine();
			s.setName(name);
			s.setChinese(Integer.parseInt(chinese));
			s.setMath(Integer.parseInt(math));
			s.setEnglish(Integer.parseInt(english));
			ts1.add(s);
		}
		
		BufferedWriter bw = new BufferedWriter(new FileWriter("fos3.txt"));
		for(Student s: ts1) {
			StringBuilder sb = new StringBuilder();
			sb.append(s.getName()).append(",").append(s.getChinese()).append(",").append(s.getMath()).append(",").append(s.getEnglish());
			bw.write(sb.toString());
			bw.newLine();
		}
		bw.close();
		System.out.println("学生信息保存完毕");
	}
}
