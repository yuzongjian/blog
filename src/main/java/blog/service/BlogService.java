package blog.service;

import java.util.List;

import blog.domain.Blog;

/**
 * 博客Service接口
 * @author Administrator
 *
 */
public interface BlogService {

	/**
	 * 根据日期分月分组查询
	 * @return
	 */
	public List<Blog> countList();
}
