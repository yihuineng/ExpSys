package net.yihuineng.codegen;

public enum UniFieldType {

	// type根据mysql java type定义
	VARCHAR(253, "varchar"), BIGINT(8, "bigint"), INT(3, "int"), BIT(16, "bit"), DATETIME(12, "datetime"), FLOAT(5, "float"), DECIMAL(0, "decimal"), TEXT(-1, "text"), BINARY(-4, "binary");

	private int type;
	private String name;

	private UniFieldType(int type, String name) {
		this.type = type;
		this.name = name;
	}

	public int getType() {
		return type;
	}

	public String getName() {
		return name;
	}

}
