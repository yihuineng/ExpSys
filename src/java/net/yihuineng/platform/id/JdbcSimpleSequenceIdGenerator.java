package net.yihuineng.platform.id;

import com.jfinal.plugin.activerecord.Db;

public class JdbcSimpleSequenceIdGenerator implements IdGeneratorIF {

	private final String name;

	public JdbcSimpleSequenceIdGenerator(String name) {
		this.name = name;
	}

	@Override
	public synchronized long nextVal() {
		Long value = Db.queryLong("select NextVal from PSequence where SeqName=?", name);
		if (value == null) {
			Db.update("insert into PSequence (SeqName,NextVal) values (?,?)", name, 1);
			return 1;
		} else {
			Db.update("update PSequence set NextVal=? where SeqName=?", value + 1, name);
		}
		return value;
	}

}
