package net.yihuineng.project.km.model.base;

import net.yihuineng.framework.data.Model;
import java.util.Date;
import java.util.Map;
import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class KM_Q_ABM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("ID", "FieldType未实现");
		fieldInfoMap.put("QContent", "FieldType未实现");
		fieldInfoMap.put("AContent", "FieldType未实现");
		fieldInfoMap.put("QLables", "FieldType未实现");
		fieldInfoMap.put("AddTime", "FieldType未实现");
		fieldInfoMap.put("AddUser", "FieldType未实现");
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
	 * @return the 问题
	 */
	public String getQContent() {
		return getStr("QContent");
	}

	/**
	 * @param 问题 the 问题 to set
	 */
	public void setQContent(String qContent) {
		set("QContent", qContent);
	}
	
	/**
	 * @return the 答案
	 */
	public String getAContent() {
		return getStr("AContent");
	}

	/**
	 * @param 答案 the 答案 to set
	 */
	public void setAContent(String aContent) {
		set("AContent", aContent);
	}
	
	/**
	 * @return the 问题标签
	 */
	public String getQLables() {
		return getStr("QLables");
	}

	/**
	 * @param 问题标签 the 问题标签 to set
	 */
	public void setQLables(String qLables) {
		set("QLables", qLables);
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
	 * @return the 添加用户
	 */
	public String getAddUser() {
		return getStr("AddUser");
	}

	/**
	 * @param 添加用户 the 添加用户 to set
	 */
	public void setAddUser(String addUser) {
		set("AddUser", addUser);
	}
	
}