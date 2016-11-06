package net.yihuineng.project.km.model.base;

import net.yihuineng.framework.data.Model;
import java.util.Map;
import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class KM_LABELBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("ID", "FieldType未实现");
		fieldInfoMap.put("LabelName", "FieldType未实现");
		fieldInfoMap.put("FLabels", "FieldType未实现");
	}
		
	protected Map<String, String> getFieldInfoMap() {
		return fieldInfoMap;
	}
	
	/*----------------------------------------------------------------------*
	 * Getter and Setter
	 *----------------------------------------------------------------------*/
	/**
	 * @return the ID
	 */
	public long getID() {
		Long v = getLong("ID");
		if (v == null) {
			return 0L;
		}
		return v.longValue();
	}

	/**
	 * @param ID the ID to set
	 */
	public void setID(long id) {
		set("ID", id);
	}
	
	/**
	 * @return the 标签名称
	 */
	public String getLabelName() {
		return getStr("LabelName");
	}

	/**
	 * @param 标签名称 the 标签名称 to set
	 */
	public void setLabelName(String labelName) {
		set("LabelName", labelName);
	}
	
	/**
	 * @return the 父标签
	 */
	public String getFLabels() {
		return getStr("FLabels");
	}

	/**
	 * @param 父标签 the 父标签 to set
	 */
	public void setFLabels(String fLabels) {
		set("FLabels", fLabels);
	}
	
}