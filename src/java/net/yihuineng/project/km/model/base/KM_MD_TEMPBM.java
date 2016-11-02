package net.yihuineng.project.km.model.base;

import net.yihuineng.framework.data.Model;
import java.util.Map;
import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class KM_MD_TEMPBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("ID", "FieldType未实现");
		fieldInfoMap.put("TName", "FieldType未实现");
		fieldInfoMap.put("TContent", "FieldType未实现");
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
	 * @return the 模板名称
	 */
	public String getTName() {
		return getStr("TName");
	}

	/**
	 * @param 模板名称 the 模板名称 to set
	 */
	public void setTName(String tName) {
		set("TName", tName);
	}
	
	/**
	 * @return the 模板内容
	 */
	public String getTContent() {
		return getStr("TContent");
	}

	/**
	 * @param 模板内容 the 模板内容 to set
	 */
	public void setTContent(String tContent) {
		set("TContent", tContent);
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