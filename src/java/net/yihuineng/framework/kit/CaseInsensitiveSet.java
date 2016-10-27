package net.yihuineng.framework.kit;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

public class CaseInsensitiveSet extends HashSet<String> {

	private static final long serialVersionUID = 1L;

	private final Map<String, String> caseInsensitiveKeys;

    public CaseInsensitiveSet() {
        super();
        this.caseInsensitiveKeys = new HashMap<String, String>();
    }
    
    @Override
	public boolean add(String e) {
		this.caseInsensitiveKeys.put(convertKey(e), e);
		return super.add(e);
	}
	
	@Override
	public boolean remove(Object e) {
		if (e instanceof String ) {
			return super.remove(this.caseInsensitiveKeys.remove(convertKey((String) e)));
		} else {
			return false;
		}
	}
	
	@Override
	public boolean contains(Object e) {
		return (e instanceof String && this.caseInsensitiveKeys.containsKey(convertKey((String) e)));
	}
	
	@Override
	public void clear() {
		this.caseInsensitiveKeys.clear();
		super.clear();
	}
    
	protected String convertKey(String key) {
		return key.toLowerCase();
	}
}
