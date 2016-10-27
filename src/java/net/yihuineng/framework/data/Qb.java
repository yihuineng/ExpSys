package net.yihuineng.framework.data;

import java.util.ArrayList;
import java.util.Collection;

import com.jfinal.kit.StrKit;

public class Qb {
	
	private ArrayList<Object> params = new ArrayList<Object>();

	private ArrayList<ArrayList<Object>> batches;

	private boolean batchMode;

	private StringBuilder sql = new StringBuilder();

	public Qb() {
		
	}

	public Qb(String sql, Object... args) {
		setSQL(sql);
		if (args != null) {
			for (Object obj : args) {
				add(new Object[] { obj });
			}
		}
	}
	
	public static String wrapLike(String str) {
		if (StrKit.isBlank(str)) {
			return "%";
		} else {
			return "%" + str + "%";
		}
	}
	
	/*
	public static String wrapIn(String... str) {
		if (StrKit.notBlank(str)) {
			return "%";
		} else {
			return "%" + str + "%";
		}
	}*/

	public boolean isBatchMode() {
		return this.batchMode;
	}

	public void setBatchMode(boolean batchMode) {
		if ((batchMode) && (this.batches == null)) {
			this.batches = new ArrayList<ArrayList<Object>>();
		}
		this.batchMode = batchMode;
	}

	public void addBatch() {
		if (!this.batchMode) {
			throw new RuntimeException("Must invoke setBatchMode(true) before addBatch()");
		}
		this.batches.add(this.params);
		this.params = new ArrayList<Object>();
	}

	public ArrayList<ArrayList<Object>> getBatches() {
		return this.batches;
	}

	public Qb add(Object... params) {
		for (Object param : params) {
			this.params.add(param);
		}
		return this;
	}

	public Qb add(Collection<?> params) {
		for (Object param : params) {
			this.params.add(param);
		}
		return this;
	}

	public Qb set(int index, Object param) {
		this.params.set(index, param);
		return this;
	}

	public Qb setSQL(String sql) {
		this.sql = new StringBuilder(sql);
		return this;
	}

	public Qb append(String sqlPart, Object... params) {
		this.sql.append(sqlPart);
		if (params == null) {
			return this;
		}
		for (Object obj : params) {
			add(new Object[] { obj });
		}
		return this;
	}
	
	public Qb addPart(Qb wherePart) {
		if (wherePart == null) {
			return this;
		}
		this.sql.append(wherePart.getSQL());
		this.params.addAll(wherePart.getParams());
		return this;
	}

	public String getSQL() {
		return this.sql.toString();
	}

	public ArrayList<Object> getParams() {
		return this.params;
	}

	public void setParams(ArrayList<Object> list) {
		this.params = list;
	}

	public void clearBatches() {
		if (this.batchMode) {
			if (this.batches != null) {
				this.batches.clear();
			}
			this.batches = new ArrayList<ArrayList<Object>>();
		}
	}

	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(this.sql);
		sb.append("\t{");
		for (int i = 0; i < this.params.size(); i++) {
			if (i != 0) {
				sb.append(",");
			}
			Object o = this.params.get(i);
			if (o == null) {
				sb.append("null");
			} else {
				String str = this.params.get(i).toString();
				if (str.length() > 40) {
					str = str.substring(0, 37);
					sb.append(str);
					sb.append("...");
				} else {
					sb.append(str);
				}
			}
		}
		sb.append("}");
		return sb.toString();
	}

}