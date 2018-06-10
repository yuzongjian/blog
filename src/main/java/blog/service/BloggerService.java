package blog.service;

import blog.domain.Blogger;

/**
 * 博主Service接口
 * @author Administrator
 *
 */
public interface BloggerService {
	/**
	 * 通过用户名查询用户
	 * @param userName
	 * @return
	 */
	public Blogger getByUserName(String userName);
}
