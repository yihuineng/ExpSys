package net.yihuineng.platform.id;
 
import com.jfinal.plugin.activerecord.Db;
 
public class JdbcCachedSequenceIdGenerator implements IdGeneratorIF {
 
	public static final long NOT_FOUND = 0;
    private static final long STEP = 100;
    private final String name;
    private final long beginValue;
    private long value = -1;
    
    public JdbcCachedSequenceIdGenerator(String name) {
    	this.name = name;
    	this.beginValue = 1;
    }
    
    public JdbcCachedSequenceIdGenerator(String name, long beginValue) {
    	this.name = name;
    	this.beginValue = beginValue;
    }
    
    public synchronized long nextVal() {
        if (value < 0) {
            value = load(name);
            if (value == NOT_FOUND) {
                value = beginValue - 1;
            }
            store(name, value + STEP);
        }
 
        value++;
 
        if (value % STEP == 0) {
            store(name, value + STEP);
        }
 
        return value;
    }
 
    public long load(String name) {
    	Long value = Db.queryLong("select NextVal from PSequence where SeqName=?", name);
		if (value == null) {
			value = NOT_FOUND;
		}
		return value;
    }
 
    public void store(String name, long value) {
    	int updated = Db.update("update PSequence set NextVal=? where SeqName=?", value, name);
    	if (updated == 0) {
    		Db.update("insert into PSequence (SeqName,NextVal) values (?,?)", name, value);
    	}
    }
}