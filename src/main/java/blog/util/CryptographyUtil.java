package blog.util;

import org.apache.shiro.crypto.hash.Md5Hash;

/**
 * 加密工具
 * @author yuzongjian
 *
 */
public class CryptographyUtil {

	
	/**
	 * 增加了盐值的Md5加密
	 * @param str
	 * @param salt
	 * @return
	 */
	public static String md5(String str,String salt){
		return new Md5Hash(str,salt).toString();
	}
	
	public static void main(String[] args) {
		String password="123456";
		
		System.out.println("Md5加密："+CryptographyUtil.md5(password, "活出快乐1234"));
	}
}
