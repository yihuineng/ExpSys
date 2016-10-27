package net.yihuineng.platform.model.base;

import java.util.Date;
import java.util.Map;

import net.yihuineng.framework.data.Model;

import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class PSyncStampBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("syncName", "FieldType未实现");
		fieldInfoMap.put("lastSyncTime", "FieldType未实现");
	}
		
	protected Map<String, String> getFieldInfoMap() {
		return fieldInfoMap;
	}
	
	/*----------------------------------------------------------------------*
	 * Getter and Setter
	 *----------------------------------------------------------------------*/
	/**
	 * @return the null
	 */
	public String getSyncName() {
		return getStr("syncName");
	}

	/**
	 * @param null the null to set
	 */
	public void setSyncName(String syncName) {
		set("syncName", syncName);
	}
	
	/**
	 * @return the null
	 */
	public Date getLastSyncTime() {
		return getDate("lastSyncTime");
	}

	/**
	 * @param null the null to set
	 */
	public void setLastSyncTime(Date lastSyncTime) {
		if (lastSyncTime == null) {
			set("lastSyncTime", null);
		} else {
			set("lastSyncTime", new java.sql.Date(lastSyncTime.getTime()));
		}
	}
	
}