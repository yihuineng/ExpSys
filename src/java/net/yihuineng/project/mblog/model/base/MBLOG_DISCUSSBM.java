package net.yihuineng.project.mblog.model.base;

import net.yihuineng.framework.data.Model;
import java.util.Date;
import java.util.Map;
import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class MBLOG_DISCUSSBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("ID", "FieldType未实现");
		fieldInfoMap.put("Discuss", "FieldType未实现");
		fieldInfoMap.put("UserIP", "FieldType未实现");
		fieldInfoMap.put("UserName", "FieldType未实现");
		fieldInfoMap.put("UserDevice", "FieldType未实现");
		fieldInfoMap.put("UserContact", "FieldType未实现");
		fieldInfoMap.put("AddTime", "FieldType未实现");
		fieldInfoMap.put("BlogID", "FieldType未实现");
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
	 * @return the 评论内容
	 */
	public String getDiscuss() {
		return getStr("Discuss");
	}

	/**
	 * @param 评论内容 the 评论内容 to set
	 */
	public void setDiscuss(String discuss) {
		set("Discuss", discuss);
	}
	
	/**
	 * @return the 用户IP
	 */
	public String getUserIP() {
		return getStr("UserIP");
	}

	/**
	 * @param 用户IP the 用户IP to set
	 */
	public void setUserIP(String userIP) {
		set("UserIP", userIP);
	}
	
	/**
	 * @return the 署名
	 */
	public String getUserName() {
		return getStr("UserName");
	}

	/**
	 * @param 署名 the 署名 to set
	 */
	public void setUserName(String userName) {
		set("UserName", userName);
	}
	
	/**
	 * @return the 用户设备
	 */
	public String getUserDevice() {
		return getStr("UserDevice");
	}

	/**
	 * @param 用户设备 the 用户设备 to set
	 */
	public void setUserDevice(String userDevice) {
		set("UserDevice", userDevice);
	}
	
	/**
	 * @return the 联系方式
	 */
	public String getUserContact() {
		return getStr("UserContact");
	}

	/**
	 * @param 联系方式 the 联系方式 to set
	 */
	public void setUserContact(String userContact) {
		set("UserContact", userContact);
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
	 * @return the 博客ID
	 */
	public long getBlogID() {
		Long v = getLong("BlogID");
		if (v == null) {
			return 0L;
		}
		return v.longValue();
	}

	/**
	 * @param 博客ID the 博客ID to set
	 */
	public void setBlogID(long blogID) {
		set("BlogID", blogID);
	}
	
}