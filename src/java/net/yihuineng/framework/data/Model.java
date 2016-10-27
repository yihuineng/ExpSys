package net.yihuineng.framework.data;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.jfinal.plugin.activerecord.Page;

import net.yihuineng.framework.kit.DateKit;
import net.yihuineng.framework.kit.FriendlyModelFieldMap;

public abstract class Model<M extends Model<M>> extends com.jfinal.plugin.activerecord.Model<M> {

	private static final long serialVersionUID = 1L;
	
	protected abstract Map<String, String> getFieldInfoMap();
	
	protected Map<String, Object> getAttrsMap() {
		FriendlyModelFieldMap<Object> attrsMap = new FriendlyModelFieldMap<Object>();
		Set<String> fieldSet = getFieldInfoMap().keySet();
		for (String fieldName : fieldSet) {
			attrsMap.addFriendlyKeyMapping(fieldName);
		}
		return attrsMap;
	}
	
	public M findFirst(Qb qb) {
		return findFirst(qb.getSQL(), qb.getParams().toArray());
	}
	
	public List<M> find(Qb qb) {
		return find(qb.getSQL(), qb.getParams().toArray());
	}
	
	public Page<M> paginate(int pageNumber, int pageSize, String select, Qb qbExceptSelect) {
		return paginate(pageNumber, pageSize, select, qbExceptSelect.getSQL(), qbExceptSelect.getParams().toArray());
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> toMap() {
		final HashMap<String, Object> attrs = (HashMap<String, Object>) getAttrs();
		return (HashMap<String, Object>) attrs.clone();
	}
	
	@Override
	public Boolean getBoolean(String attr) {
		Object o = getAttrs().get(attr);
		if (o instanceof Boolean) {
			return (Boolean) o;
		} else if (o instanceof Long) {
			return ((Long) o) == 1;
		} else if (o instanceof String) {
			return "1".equals(o);
		} else {
			return "1".equals(o);
		}
	}
	
	@Override
	public Long getLong(String attr) {
		Object o = getAttrs().get(attr);
		if (o == null) {
			return 0L;
		} else if (o instanceof Long) {
			return (Long) o;
		} else {
			return Long.parseLong(o.toString());
		}
	}
	
	@Override
	public String getStr(String attr) {
		Object o = getAttrs().get(attr);
		if (o == null) {
			return null;
		} else if (o instanceof String) {
			return (String) o;
		} else {
			return String.valueOf(o);
		}
	}
	
	@Override
	public Double getDouble(String attr) {
		Object o = getAttrs().get(attr);
		if (o == null) {
			return 0D;
		} else if (o instanceof Double) {
			return (Double) o;
		} else {
			return Double.parseDouble(o.toString());
		}
	}
	
	
	@Override
	public Date getDate(String attr) {
		Object o = getAttrs().get(attr);
		if (o == null) {
			return null;
		} else if (o instanceof Date) {
			return (Date) o;
		} else if(o instanceof String){
			return DateKit.parse(o.toString());
		}else{
			return null;
		}
	}
	
	@Override
	public BigDecimal getBigDecimal(String attr) {
		Object o = getAttrs().get(attr);
		if (o == null) {
			return new BigDecimal(0);
		} else if (o instanceof BigDecimal) {
			return (BigDecimal) o;
		} else {
			return (BigDecimal) o;
		}
	}
}
