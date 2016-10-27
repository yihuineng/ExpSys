package net.yihuineng.framework.data;

import java.util.List;

import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;

public class Db extends com.jfinal.plugin.activerecord.Db{

	public static int update(Qb qb) {
		return update(qb.getSQL(), qb.getParams().toArray());
	}
	
	public static <T> List<T> query(Qb qb) {
		return query(qb.getSQL(), qb.getParams().toArray());
	}
	
	public static List<Record> find(Qb qb) {
		return find(qb.getSQL(), qb.getParams().toArray());
	}
	
	public static Record findFirst(Qb qb) {
		return findFirst(qb.getSQL(), qb.getParams().toArray());
	}
	
	public static String queryStr(Qb qb) {
		return queryStr(qb.getSQL(), qb.getParams().toArray());
	}
	
	public static int queryInt(Qb qb) {
		return queryInt(qb.getSQL(), qb.getParams().toArray());
	}
	
	public static long queryLong(Qb qb) {
		return queryLong(qb.getSQL(), qb.getParams().toArray());
	}
	
	public static String queryColumn(Qb qb) {
		return queryColumn(qb.getSQL(), qb.getParams().toArray());
	}

	public static Page<Record> paginate(int pageNumber, int pageSize, String select, Qb qbExceptSelect){
		return paginate(pageNumber, pageSize, select, qbExceptSelect.getSQL(), qbExceptSelect.getParams().toArray());
	}
}
