package net.yihuineng.platform.id;

import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

import com.jfinal.kit.PropKit;

import net.yihuineng.framework.kit.NumberCompressKit;
import net.yihuineng.framework.kit.StrKit;

public class IdKit {

	private static final String GLOBAL_KEY = "global";
	private static final IdGeneratorIF global;
	private static final IdGeneratorIF snowflake ;
	private static final Map<String, IdGeneratorIF> seqMap = new ConcurrentHashMap<String, IdGeneratorIF>();
	private static final boolean isDevModel;
 
    static {
    	isDevModel = PropKit.getBoolean("devMode", false);
        global = isDevModel ? new JdbcSimpleSequenceIdGenerator(GLOBAL_KEY) : new JdbcCachedSequenceIdGenerator(GLOBAL_KEY);
        seqMap.put(GLOBAL_KEY, global);
        
    	long snowflakeWorkId = PropKit.getLong("Snowflake.WorkId", 0L);
    	long snowflakeDatacenterId = PropKit.getLong("Snowflake.DatacenterId", 0L);
    	snowflake = new SnowflakeIdGenerator(snowflakeWorkId, snowflakeDatacenterId);
    }
    
    /**
     * 获取下一个有序序列值
     * @return
     */
    public static long nextVal() {
        return global.nextVal();
    }
 
    /**
     * 根据序列名称获取下一个有序序列值
     * @param seqName
     * @return
     */
    public static long nextVal(String seqName) {
    	if (seqMap.containsKey(seqName)) {
    		return seqMap.get(seqName).nextVal();
    	} else {
    		IdGeneratorIF seq = isDevModel ? new JdbcSimpleSequenceIdGenerator(seqName) : new JdbcCachedSequenceIdGenerator(seqName);
    		seqMap.put(seqName, seq);
    		return seq.nextVal();
    	}
    }
    
    /**
     * 获取层级编码
     * @param codeName
     * @param parentInnerCode
     * @return
     */
    public static String nextInnerCode(String codeName, String parentInnerCode) {
    	if (parentInnerCode==null) {
    		parentInnerCode = "";
    	}
    	
    	long val = nextVal(codeName);
    	String innerCode = NumberCompressKit.compressNumber(val);
    	innerCode = StrKit.leftPad(innerCode, '0', 4);
    	
    	return parentInnerCode + innerCode;
    }
    
    /**
     * 获取唯一有序随机ID
     * @return
     */
    public static long newUid() {
    	return snowflake.nextVal();
    }
    
    public static String newBearerToken() {
    	return String.valueOf(newUid()) + "-" + UUID.randomUUID().toString();
    }
    
    /**
	 * TODO 得到类型为noType位长为length的编码
	 */
	public static String getMaxNo(String noType, String subType, int length) {
		return StrKit.leftPad("1", '0', length);
	}
	
}
