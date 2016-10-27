package net.yihuineng.codegen;

public class FieldTypeConverter {

	public static String convertUniTypeToJavaType(UniFieldType uniFieldType, int size) {
		switch (uniFieldType) {
		case VARCHAR:
			return "String";
		case BIGINT:
			return "long";
		case INT:
			return "int";
		case BIT:
			return "boolean";
		case DATETIME:
			return "Date";
		case FLOAT:
			return "double";
		case DECIMAL:
			return "BigDecimal";
		case TEXT:
			return "String";
		case BINARY:
			return "byte[]";
		default:
			return null;
		}
	}

	public static UniFieldType convertJdbcTypeToUniType(DbType dbType, String jdbcType, int size) {
		return convertJdbcTypeToUniTypeForSqlServer(jdbcType, size);
	}

	private static UniFieldType convertJdbcTypeToUniTypeForSqlServer(String jdbcType, int size) {
		if ("varchar".equalsIgnoreCase(jdbcType) || "nvarchar".equalsIgnoreCase(jdbcType) || "char".equalsIgnoreCase(jdbcType) || "nchar".equalsIgnoreCase(jdbcType)) {
			if (size == -1) {
				return UniFieldType.TEXT;
			} else {
				return UniFieldType.VARCHAR;
			}
		} else if ("bigint".equalsIgnoreCase(jdbcType)) {
			return UniFieldType.BIGINT;
		} else if ("int".equalsIgnoreCase(jdbcType) || "tinyint".equalsIgnoreCase(jdbcType) || "tinyint".equalsIgnoreCase(jdbcType) || "smallint".equalsIgnoreCase(jdbcType)) {
			return UniFieldType.INT;
		} else if ("text".equalsIgnoreCase(jdbcType) || "ntext".equalsIgnoreCase(jdbcType)) {
			return UniFieldType.TEXT;
		} else if ("bit".equalsIgnoreCase(jdbcType)) {
			return UniFieldType.BIT;
		} else if ("datetime".equalsIgnoreCase(jdbcType) || "smalldatetime".equalsIgnoreCase(jdbcType) || "timestamp".equalsIgnoreCase(jdbcType)) {
			return UniFieldType.DATETIME;
		} else if ("float".equalsIgnoreCase(jdbcType) || "real".equalsIgnoreCase(jdbcType)) {
			return UniFieldType.FLOAT;
		} else if ("money".equalsIgnoreCase(jdbcType) || "decimal".equalsIgnoreCase(jdbcType) || "smallmoney".equalsIgnoreCase(jdbcType) || "numeric".equalsIgnoreCase(jdbcType)) {
			return UniFieldType.DECIMAL;
		} else if ("image".equalsIgnoreCase(jdbcType) || "varbinary".equalsIgnoreCase(jdbcType) || "binary".equalsIgnoreCase(jdbcType)) {
			return UniFieldType.BINARY;
		}
		// 不支持：uniqueidentifier、sql_variant、xml、sysname
		return null;
	}

}
