package blog.dao;

import java.util.List;

import blog.domain.Blog;


/**
 * 博客Dao接口
 * @author Administrator
 *
 */
public interface BlogDao {

	/**
	 * 根据日期分月分组查询
	 * @return
	 */
	public List<Blog> countList();
}
