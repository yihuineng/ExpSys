package net.yihuineng.project.km.model.base;

import net.yihuineng.framework.data.Model;
import java.util.Map;
import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class KM_LABLEBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("ID", "FieldType未实现");
		fieldInfoMap.put("LableName", "FieldType未实现");
		fieldInfoMap.put("FLables", "FieldType未实现");
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
	 * @return the 名称
	 */
	public String getLableName() {
		return getStr("LableName");
	}

	/**
	 * @param 名称 the 名称 to set
	 */
	public void setLableName(String lableName) {
		set("LableName", lableName);
	}
	
	/**
	 * @return the 直系父标签
	 */
	public String getFLables() {
		return getStr("FLables");
	}

	/**
	 * @param 直系父标签 the 直系父标签 to set
	 */
	public void setFLables(String fLables) {
		set("FLables", fLables);
	}
	
}