package net.yihuineng.framework.kit;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Record;

import net.yihuineng.framework.data.Db;
import net.yihuineng.framework.data.Qb;

public class OrderKit {

	public static final String AFTER = "After";

	private static long currentOrder = System.currentTimeMillis();

	public static synchronized long getDefaultOrder() {
		if (System.currentTimeMillis() <= currentOrder) {
			currentOrder += 1L;
		} else {
			currentOrder = System.currentTimeMillis();
		}
		return currentOrder;
	}
	
	public static synchronized long getMaxOrder() {
		Qb qb = new Qb("select MAX(orderFlag) orderFlag from PGroupMember");
		Record r =Db.findFirst(qb);
		currentOrder = r.getLong("orderFlag");
		return currentOrder;
	}

	public static void updateOrder(String table, String column, String type, long targetOrderFlag, Qb wherePart, Model<?> model) {
		long orderFlag = model.getLong(column);
		if (orderFlag > targetOrderFlag) {
			Qb qb = new Qb("update " + table + " set " + column + "=" + column + "+1");
			qb.append(" where " + column + (AFTER.equalsIgnoreCase(type) ? ">" : ">=") + targetOrderFlag + " and " + column + "<" + orderFlag);
			qb.addPart(wherePart);
			Db.update(qb);
			
			model.set(column, targetOrderFlag + (AFTER.equalsIgnoreCase(type)?1:0));
		} else {
			Qb qb = new Qb("update " + table + " set " + column + "=" + column + "-1");
			qb.append(" where " + column + ">" + orderFlag + " and " + column + (AFTER.equalsIgnoreCase(type) ? "<=" : "<") + targetOrderFlag);
			qb.addPart(wherePart);
			Db.update(qb);
			
			model.set(column, targetOrderFlag - (AFTER.equalsIgnoreCase(type)?0:1));
		}

		model.update();
	}

	public static void updateOrder(String table, String column, long targetOrderFlag, Qb wherePart, Model<?> model) {
		updateOrder(table, column, AFTER, targetOrderFlag, wherePart, model);
	}

	public static void updateOrder(String table, long targetOrderFlag, Qb wherePart, Model<?> model) {
		updateOrder(table, "OrderFlag", targetOrderFlag, wherePart, model);
	}

	public static void updateOrder(String table, long targetOrderFlag, Model<?> model) {
		updateOrder(table, targetOrderFlag, null, model);
	}

}