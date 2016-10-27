package net.yihuineng.framework.kit;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/**
 * {@link HashMap} variant that stores String keys in a case-insensitive
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
public class CaseInsensitiveMap<V> extends HashMap<String, V> {

	private static final long serialVersionUID = 1L;

	private final Map<String, String> caseInsensitiveKeys;

	private final Locale locale;


	/**
	 * Create a new CaseInsensitiveMap for the default Locale.
	 * @see java.lang.String#toLowerCase()
	 */
	public CaseInsensitiveMap() {
		this(null);
	}

	/**
	 * Create a new CaseInsensitiveMap that stores lower-case keys
	 * according to the given Locale.
	 * @param locale the Locale to use for lower-case conversion
	 * @see java.lang.String#toLowerCase(java.util.Locale)
	 */
	public CaseInsensitiveMap(Locale locale) {
		super();
		this.caseInsensitiveKeys = new HashMap<String, String>();
		this.locale = (locale != null ? locale : Locale.getDefault());
	}

	/**
	 * Create a new CaseInsensitiveMap that wraps a {@link HashMap}
	 * with the given initial capacity and stores lower-case keys according
	 * to the default Locale.
	 * @param initialCapacity the initial capacity
	 * @see java.lang.String#toLowerCase()
	 */
	public CaseInsensitiveMap(int initialCapacity) {
		this(initialCapacity, null);
	}

	/**
	 * Create a new CaseInsensitiveMap that wraps a {@link HashMap}
	 * with the given initial capacity and stores lower-case keys according
	 * to the given Locale.
	 * @param initialCapacity the initial capacity
	 * @param locale the Locale to use for lower-case conversion
	 * @see java.lang.String#toLowerCase(java.util.Locale)
	 */
	public CaseInsensitiveMap(int initialCapacity, Locale locale) {
		super(initialCapacity);
		this.caseInsensitiveKeys = new HashMap<String, String>(initialCapacity);
		this.locale = (locale != null ? locale : Locale.getDefault());
	}


	@Override
	public V put(String key, V value) {
		this.caseInsensitiveKeys.put(convertKey(key), key);
		return super.put(key, value);
	}

	@Override
	public boolean containsKey(Object key) {
		return (key instanceof String && this.caseInsensitiveKeys.containsKey(convertKey((String) key)));
	}

	@Override
	public V get(Object key) {
		if (key instanceof String) {
			return super.get(this.caseInsensitiveKeys.get(convertKey((String) key)));
		}
		else {
			return null;
		}
	}

	@Override
	public V remove(Object key) {
		if (key instanceof String ) {
			return super.remove(this.caseInsensitiveKeys.remove(convertKey((String) key)));
		}
		else {
			return null;
		}
	}

	@Override
	public void clear() {
		this.caseInsensitiveKeys.clear();
		super.clear();
	}


	/**
	 * Convert the given key to a case-insensitive key.
	 * <p>The default implementation converts the key
	 * to lower-case according to this Map's Locale.
	 * @param key the user-specified key
	 * @return the key to use for storing
	 * @see java.lang.String#toLowerCase(java.util.Locale)
	 */
	protected String convertKey(String key) {
		return key.toLowerCase(this.locale);
	}

}