package net.yihuineng.project.km.model.base;

import net.yihuineng.framework.data.Model;
import java.util.Map;
import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class KM_CONFIGBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("ID", "FieldType未实现");
		fieldInfoMap.put("CKey", "FieldType未实现");
		fieldInfoMap.put("CValue", "FieldType未实现");
		fieldInfoMap.put("Memo", "FieldType未实现");
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
	 * @return the 键
	 */
	public String getCKey() {
		return getStr("CKey");
	}

	/**
	 * @param 键 the 键 to set
	 */
	public void setCKey(String cKey) {
		set("CKey", cKey);
	}
	
	/**
	 * @return the 值
	 */
	public String getCValue() {
		return getStr("CValue");
	}

	/**
	 * @param 值 the 值 to set
	 */
	public void setCValue(String cValue) {
		set("CValue", cValue);
	}
	
	/**
	 * @return the 备注
	 */
	public String getMemo() {
		return getStr("Memo");
	}

	/**
	 * @param 备注 the 备注 to set
	 */
	public void setMemo(String memo) {
		set("Memo", memo);
	}
	
}