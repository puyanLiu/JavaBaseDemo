package login_register.test;

import java.util.Scanner;

import login_register.Dao.UserDao;
import login_register.model.UserModel;

public class UserTest {
	public static void main(String[] args) {
		while (true) {
			System.out.println("------------欢迎光临------------");
			System.out.println("1 登录");
			System.out.println("2 注册");
			System.out.println("3 退出");
			System.out.println("请输入你的选择");
			Scanner scanner = new Scanner(System.in);
			switch (scanner.nextLine()) {
			case "1":
				System.out.println("------------登录界面------------");
				System.out.println("请输入用户名");
				String username = scanner.nextLine();
				System.out.println("请输入密码");
				String password = scanner.nextLine();
				boolean isFlag = new UserDao().isLogin(username, password);
				if (isFlag) {
					System.out.println("登录成功");
				} else {
					System.out.println("登录失败");
				}
				break;
			case "2":
				System.out.println("------------注册界面------------");
				System.out.println("请输入用户名");
				String newUsername = scanner.nextLine();
				System.out.println("请输入密码");
				String newPassword = scanner.nextLine();
				UserModel userModel = new UserModel();
				userModel.setUsername(newUsername);
				userModel.setPassword(newPassword);
				new UserDao().register(userModel);
				System.out.println("注册成功");
				break;
			case "3":
			default:
				System.out.println("谢谢使用，欢迎下次再来");
				System.exit(0);
				break;
			}
		}
	}
}
