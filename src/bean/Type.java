package bean;

//类型
public class Type {

	private Integer id;
	private String typeName;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	@Override
	public String toString() {
		return "Type [id=" + id + ", typeName=" + typeName + "]";
	}

	public Type() {
		super();
	}
	public Type(Integer id, String typeName) {
		super();
		this.id = id;
		this.typeName = typeName;
	}


}
