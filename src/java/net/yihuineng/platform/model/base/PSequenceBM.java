package net.yihuineng.platform.model.base;

import java.util.Map;

import net.yihuineng.framework.data.Model;

import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class PSequenceBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("seqName", "FieldType未实现");
		fieldInfoMap.put("nextVal", "FieldType未实现");
	}
		
	protected Map<String, String> getFieldInfoMap() {
		return fieldInfoMap;
	}
	
	/*----------------------------------------------------------------------*
	 * Getter and Setter
	 *----------------------------------------------------------------------*/
	/**
	 * @return the seqName
	 */
	public String getSeqName() {
		return getStr("seqName");
	}

	/**
	 * @param seqName the seqName to set
	 */
	public void setSeqName(String seqName) {
		set("seqName", seqName);
	}
	
	/**
	 * @return the nextVal
	 */
	public long getNextVal() {
		Long v = getLong("nextVal");
		if (v == null) {
			return 0L;
		}
		return v.longValue();
	}

	/**
	 * @param nextVal the nextVal to set
	 */
	public void setNextVal(long nextVal) {
		set("nextVal", nextVal);
	}
	
}