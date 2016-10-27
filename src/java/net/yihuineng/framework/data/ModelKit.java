package net.yihuineng.framework.data;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.jfinal.log.Log;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;

public class ModelKit {

	private final static Log log = Log.getLog(ModelKit.class);

	public static LinkedHashMap<String, String> toMap(List<?> list, String keyAttr, String valAttr) {
		LinkedHashMap<String, String> result = Maps.newLinkedHashMap();
		for (Object obj : list) {
			if (obj instanceof Model) {
				Model<?> model = (Model<?>) obj;
				result.put(model.getStr(keyAttr), model.getStr(valAttr));
			} else if (obj instanceof Record) {
				Record record = (Record) obj;
				result.put(record.getStr(keyAttr), record.getStr(valAttr));
			} else {
				log.error("list中的元素必须是Model或Record类型，当前元素类型是：" + obj.getClass());
			}
		}
		return result;
	}

	public static void decodeAttr(Page<?> page, String attr, Map<String, String> map) {
		List<?> list = page.getList();
		decodeAttr(list, attr, map);
	}

	public static void decodeAttr(List<?> list, String attr, Map<String, String> map) {
		for (Object obj : list) {
			if (obj instanceof Model<?>) {
				Model<?> model = (Model<?>) obj;
				model.put(attr + "Name", map.get(model.getStr(attr)));
			} else if (obj instanceof Record) {
				Record record = (Record) obj;
				Object object = record.get(attr);
				record.set(attr + "Name", map.get(object.toString()));
			}
		}
	}
	
	public static void decodeAttr(List<?> list, String attr, Map<String, String> map, String key) {
		for (Object obj : list) {
			if (obj instanceof Model<?>) {
				Model<?> model = (Model<?>) obj;
				model.put(attr + key, map.get(model.getStr(attr)));
			} else if (obj instanceof Record) {
				Record record = (Record) obj;
				Object object = record.get(attr);
				record.set(attr + key, map.get(object.toString()));
			}
		}
	}
	
	public static void decodeAttr(Model<?> model, String attr, Map<String, String> map) {
		model.put(attr + "Name", map.get(model.getStr(attr)));
	}
	
	public static void decodeAttr(Model<?> model, String attr, Map<String, String> map,String key) {
		model.put(attr + key, map.get(model.getStr(attr)));
	}

	public static void decodeAttr(Record record, String attr, Map<String, String> map) {
		record.set(attr + "Name", map.get(record.getStr(attr)));
	}
	
	/**
	 * 根据attrMappedListStr，给model增加复制的属性
	 * @param model
	 * @param attrMappedListStr 如：parentId>pid,permissionName>text,icon>iconCls
	 * @return
	 */
	public static <M extends Model<M>> M copyAttr(M model, String attrMappedListStr) {
		String[] attrMappedStrArr = attrMappedListStr.split(",");
		for (String attrMappedStr : attrMappedStrArr) {
			String[] attrMappedArr = attrMappedStr.split(">");
			model.put(attrMappedArr[1], model.get(attrMappedArr[0]));
		}
		return model;
	}
	
	/**
	 * 根据attrMappedListStr，给record增加复制的属性
	 * @param record
	 * @param attrMappedListStr 如：parentId>pid,permissionName>text,icon>iconCls
	 * @return
	 */
	public static Record copyAttr(Record record, String attrMappedListStr) {
		String[] attrMappedStrArr = attrMappedListStr.split(",");
		for (String attrMappedStr : attrMappedStrArr) {
			String[] attrMappedArr = attrMappedStr.split(">");
			record.set(attrMappedArr[1], record.get(attrMappedArr[0]));
		}
		return record;
	}

	/**
	 * 构建树列表
	 * @param list
	 * @return
	 */
	public static <M extends Model<M>> List<M> buildTree(List<M> list) {
		return buildTree(list, "0");
	}

	/**
	 * 根据起始树节点id构建子树列表
	 * @param list
	 * @return
	 */
	public static <M extends Model<M>> List<M> buildTree(List<M> list, String parentId) {
		List<M> nodes = Lists.newArrayList();
		List<M> newList = Lists.newArrayList(list);
		for (int i = 0; i < newList.size(); i++) {
			M model = newList.get(i);
			if (model instanceof BasicTreeModelIF<?>) {
				@SuppressWarnings("unchecked")
				BasicTreeModelIF<M> treeModel = (BasicTreeModelIF<M>) model;
				
				if (treeModel.treeParentId().equalsIgnoreCase(parentId)) {
					newList.remove(model);
					i--;

					List<M> childNodes = buildTree(newList, treeModel.treeId());
					treeModel.treeSetChildren(childNodes);
					nodes.add(model);
				}
			}
		}
		return nodes;
	}

}
