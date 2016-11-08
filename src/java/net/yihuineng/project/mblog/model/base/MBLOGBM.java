package net.yihuineng.project.mblog.model.base;

import net.yihuineng.framework.data.Model;
import java.util.Date;
import java.util.Map;
import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class MBLOGBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("ID", "FieldType未实现");
		fieldInfoMap.put("Blog", "FieldType未实现");
		fieldInfoMap.put("AddTime", "FieldType未实现");
		fieldInfoMap.put("AddUser", "FieldType未实现");
		fieldInfoMap.put("ViewCount", "FieldType未实现");
		fieldInfoMap.put("IsStable", "FieldType未实现");
		fieldInfoMap.put("BlogType", "FieldType未实现");
	}
		
	protected Map<String, String> getFieldInfoMap() {
		return fieldInfoMap;
	}
	
	/*----------------------------------------------------------------------*
	 * Getter and Setter
	 *----------------------------------------------------------------------*/
	/**
	 * @return the 编号
	 */
	public long getID() {
		Long v = getLong("ID");
		if (v == null) {
			return 0L;
		}
		return v.longValue();
	}

	/**
	 * @param 编号 the 编号 to set
	 */
	public void setID(long id) {
		set("ID", id);
	}
	
	/**
	 * @return the 博客正文
	 */
	public String getBlog() {
		return getStr("Blog");
	}

	/**
	 * @param 博客正文 the 博客正文 to set
	 */
	public void setBlog(String blog) {
		set("Blog", blog);
	}
	
	/**
	 * @return the 添加时间
	 */
	public Date getAddTime() {
		return getDate("AddTime");
	}

	/**
	 * @param 添加时间 the 添加时间 to set
	 */
	public void setAddTime(Date addTime) {
		if (addTime == null) {
			set("AddTime", null);
		} else {
			set("AddTime", new java.sql.Date(addTime.getTime()));
		}
	}
	
	/**
	 * @return the 署名
	 */
	public String getAddUser() {
		return getStr("AddUser");
	}

	/**
	 * @param 署名 the 署名 to set
	 */
	public void setAddUser(String addUser) {
		set("AddUser", addUser);
	}
	
	/**
	 * @return the 点击量
	 */
	public long getViewCount() {
		Long v = getLong("ViewCount");
		if (v == null) {
			return 0L;
		}
		return v.longValue();
	}

	/**
	 * @param 点击量 the 点击量 to set
	 */
	public void setViewCount(long viewCount) {
		set("ViewCount", viewCount);
	}
	
	/**
	 * @return the 是否发布
	 */
	public boolean getIsStable() {
		return getBoolean("IsStable");
	}

	/**
	 * @param 是否发布 the 是否发布 to set
	 */
	public void setIsStable(boolean isStable) {
		set("IsStable", isStable);
	}
	
	/**
	 * @return the 博客类型
	 */
	public String getBlogType() {
		return getStr("BlogType");
	}

	/**
	 * @param 博客类型 the 博客类型 to set
	 */
	public void setBlogType(String blogType) {
		set("BlogType", blogType);
	}
	
}