package net.yihuineng.framework.kit;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * {@link LinkedHashMap} variant that stores String keys in a case-insensitive
 * manner, for example for key-based access in a results table.
 *
 * <p>Preserves the original order as well as the original casing of keys,
 * while allowing for contains, get and remove calls with any case of key.
 *
 * <p>Does <i>not</i> support <code>null</code> keys.
 *
 * @author Juergen Hoeller
 * @since 3.0
 */
public class FriendlyModelFieldMap<V> extends LinkedHashMap<String, V> {

	private static final long serialVersionUID = 1L;

	private final Map<String, String> caseInsensitiveFriendlyKeys;


	/**
	 * Create a new LinkedCaseInsensitiveMap for the default Locale.
	 * @see java.lang.String#toLowerCase()
	 */
	public FriendlyModelFieldMap() {
		super();
		this.caseInsensitiveFriendlyKeys = new HashMap<String, String>();
	}

	/**
	 * Create a new LinkedCaseInsensitiveMap that wraps a {@link LinkedHashMap}
	 * with the given initial capacity and stores lower-case keys according
	 * to the default Locale.
	 * @param initialCapacity the initial capacity
	 * @see java.lang.String#toLowerCase()
	 */
	public FriendlyModelFieldMap(int initialCapacity) {
		super(initialCapacity);
		this.caseInsensitiveFriendlyKeys = new HashMap<String, String>(initialCapacity);
	}


	@Override
	public V put(String key, V value) {
		String friendlyKey = getFriendlyKey(key);
		return super.put(friendlyKey, value);
	}

	@Override
	public boolean containsKey(Object key) {
		if (key instanceof String) {
			String friendlyKey = getFriendlyKey((String) key);
			if (super.containsKey(friendlyKey)) {
				return true;
			}
		}
		return false;
	}

	@Override
	public V get(Object key) {
		if (key instanceof String) {
			return super.get(getFriendlyKey((String) key));
		} else {
			return null;
		}
	}

	@Override
	public V remove(Object key) {
		if (key instanceof String ) {
			return super.remove(getFriendlyKey((String) key));
		} else {
			return null;
		}
	}

	/**
	 * 只清空数据，不清空大小写映射关系
	 */
	@Override
	public void clear() {
		super.clear();
	}

	public void addFriendlyKeyMapping(String friendlyKey) {
		addFriendlyKeyMapping(friendlyKey, friendlyKey);
	}
	
	public void addFriendlyKeyMapping(String key, String friendlyKey) {
		String caseInsensitiveKey = convertKey(key);
		String oldFriendlyKey = getFriendlyKey(key);
		if (!oldFriendlyKey.equals(friendlyKey)) {
			if (super.containsKey(oldFriendlyKey)) {
				V value = super.get(oldFriendlyKey);
				super.remove(oldFriendlyKey);
				super.put(friendlyKey, value);
			}
			caseInsensitiveFriendlyKeys.put(caseInsensitiveKey, friendlyKey);
		}
	}
	
	/*
	public Map<String, String> getFriendlyKeyMapping() {
		return caseInsensitiveFriendlyKeys;
	}
	*/

	/**
	 * Convert the given key to a case-insensitive key.
	 * <p>The default implementation converts the key
	 * to lower-case according to this Map's Locale.
	 * @param key the user-specified key
	 * @return the key to use for storing
	 * @see java.lang.String#toLowerCase(java.util.Locale)
	 */
	protected String convertKey(String key) {
		return key.toLowerCase();
	}
	
	private String getFriendlyKey(String key) {
		String caseInsensitiveKey = convertKey(key);
		if (caseInsensitiveFriendlyKeys.containsKey(caseInsensitiveKey)) {
			return caseInsensitiveFriendlyKeys.get(caseInsensitiveKey);
		} else {
			caseInsensitiveFriendlyKeys.put(caseInsensitiveKey, key);
			return key;
		}
	}

}